module AES_Decipher (
	input clk, 
	input reset,
	input [0:127] cipher_text ,
	input [0:255] cipher_key ,
	input key_valid,
	input start_conversion,		// Will Start AES Pipeline	-- Toggle whenever data is set. Should be set once in every 8 clock cycles
	input last_conversion,		// Will come when last data on the pipe is set. --- Will be hold until done_conversion occurs and will clear later.
	output [0:127] plain_text, // Will be made valid only for 1~2 cycles.
	output ready_text,
	output pipe_ready,
	output done_conversion
);
	
	// TOP LEVEL FOR AES PIPELINE ENCRYPTION... Should work standalone with necessary modules.

	//Current Objective : Pipelined AES Algorithm. (8 cycled throughput approach, (14*2) stage pipeline)
	
	/* STATES
		1. ST_INIT 				--> Initial State. At the start of the board only.
		2. ST_S_BOX_INIT		--> S-Box Creation state. ((14*8)+4) S-Box Creation (Use 15 instances of s_box_maker -- Will optimize to 1 if too much LUTs consumed)
		3. ST_READY				--> State after S-Box Created. After reset, if s-box created, enter this state. Wait in this state until key expansion completes.
		4. ST_DATA_IN	 		--> Start getting and giving the data. 128-bit for every 4 cycles... IV-Data. 
											Only incremental data will be occuring. Therefore can get an IV of 
											96 bits and then increment the counter every 4 clock cycles and send the data
	*/
	
	localparam [2:0] ST_INIT			= 3'b000;			localparam [2:0] 	ST_S_BOX_INIT		= 3'b001;
	localparam [2:0] ST_READY			= 3'b010;			localparam [2:0]  ST_ZERO_CONV		= 3'b011;
	localparam [2:0] ST_LAST_CONV		= 3'b100;			localparam [2:0]  ST_PIPE_DATA		= 3'b101;
	localparam [2:0] ST_DONE			= 3'b110;

	reg [2:0] CURR_STATE; 
	reg [2:0] NEXT_STATE;
	
	wire [0:1919] out_key;
	wire complete_expansion;
	
	wire [0:127] out_data [0:14];
	wire out_ready [0:14];
	wire s_box_ready [0:13];
	
	reg done_signal;		// Signal to indicate whether the last conversion is done. 
	
	assign pipe_ready = (s_box_ready[13] == 1'b1 && complete_expansion == 1'b1) ? 1'b1 : 1'b0;
	assign done_conversion = (CURR_STATE == ST_DONE) ? 1'b1 : 1'b0;
	
	// RESET STATE TRANSITION
	always @(posedge clk) 	begin
		if(reset == 1'b0)	begin 		// Active Low Reset
//			if(s_box_ready[13] == 1'b1 && complete_expansion == 1'b1)
//				CURR_STATE <= ST_READY;
//			else
				CURR_STATE <= ST_INIT;
		end
		else
			CURR_STATE <= NEXT_STATE;
	end
	
	// STATE TRANSITION
	always @(CURR_STATE, s_box_ready, complete_expansion, start_conversion, done_conversion, done_signal, last_conversion, pipe_ready) begin
		NEXT_STATE <= CURR_STATE;
		case (CURR_STATE)
			ST_INIT 				: NEXT_STATE <= ST_S_BOX_INIT;
			ST_S_BOX_INIT		: if(pipe_ready == 1'b1) NEXT_STATE <= ST_READY;
			ST_READY				: if(start_conversion == 1'b1) NEXT_STATE <= ST_PIPE_DATA;
			ST_PIPE_DATA		: if(last_conversion == 1'b1) NEXT_STATE <= ST_LAST_CONV;
			ST_LAST_CONV		: if(done_signal == 1'b1) NEXT_STATE <= ST_DONE;
			ST_DONE				: begin
				if(pipe_ready == 1'b1)
					NEXT_STATE <= ST_READY;
				else
					NEXT_STATE <= ST_INIT;
			end
			default : ;
		endcase
	end
		
	reg input_data_to_pipe;		// Bit will set first value to the pipe.
		
	reg [0:127] input_block;
//	assign input_block = (input_data_to_pipe == 1'b1) ? plain_text : 128'd0;
	
	// Will have repeating 8 clocks and will enable 1 input_data_to_pipe with data at every 8 clock cycles.
	reg [7:0] counter;		// 14*8 clocks needed for final counter. For pipe_data, only 8 clocks needed, So will make a mod-8 check in required modes.

	always @(posedge clk) begin
		case (CURR_STATE)
			ST_INIT: begin
				input_data_to_pipe <= 1'b0;
				counter <= 8'd0;
				done_signal <= 1'b0;
				input_block <= 128'd0;
			end
			ST_READY: begin
				if(start_conversion == 1'b1) begin
					input_data_to_pipe <= 1'b0;
					input_block <= cipher_text;
					counter <= 8'd0;
					done_signal <= 1'b0;
				end
			end
			ST_ZERO_CONV: begin
				if(counter == 8'd7)
					counter <= 8'd0;
				else
					counter <= counter + 1'b1;
				if(start_conversion == 1'b1) 
					input_block <= cipher_text;
				if(counter == 8'd0)
					input_data_to_pipe <= 1'b1;
				else
					input_data_to_pipe <= 1'b0;
			end
			ST_PIPE_DATA: begin
				if(counter == 8'd7)
					counter <= 8'd0;
				else
					counter <= counter + 1'b1;
				if(start_conversion == 1'b1) 
					input_block <= cipher_text;
				if(counter == 8'd0)
					input_data_to_pipe <= 1'b1;
				else
					input_data_to_pipe <= 1'b0;
			end
			ST_LAST_CONV: begin
				if(counter < 8'd111 && done_signal == 1'b0) begin
					if(start_conversion == 1'b1) 
						input_block <= cipher_text;
					if(counter == 8'd0)
						input_data_to_pipe <= 1'b1;
					else
						input_data_to_pipe <= 1'b0;
					counter <= counter + 1'd1;
				end
				else begin
					done_signal <= 1'b1;
					counter <= 8'd0;
				end
			end
			default : ;
		endcase
	end
	
	// Structural Assignments
	/*
		Will have 14 stage assignments. Every stage will transition the data at every 8 clock cycles. 
	*/
	
	keyExpansion dut_key_ex (clk, reset, cipher_key, key_valid, out_key, complete_expansion);

	inv_AES_last_round dut_last_round (clk, reset, input_block, input_data_to_pipe, out_key[1792 +: 128], out_data[0], out_ready[0], s_box_ready [13]);
	
	genvar i;
	generate 
		for(i=0 ; i<13; i=i+1) begin : AES_assign
			inv_AES_round dut_round (clk, reset, out_data[i], out_ready[i], out_key[(128 * (13-i)) +: 128], out_data [i+1], out_ready [i+1], s_box_ready [i]);
		end
	endgenerate
	
	addRoundKey dut_ark0 (clk, reset, out_data[13], out_ready[13], out_key[0:127], plain_text, ready_text);
	
endmodule