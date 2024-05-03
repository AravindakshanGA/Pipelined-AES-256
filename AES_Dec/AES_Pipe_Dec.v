module AES_Pipe_Dec (clk, reset, start, in_data, in_valid, ready_for_inp, out_data, out_valid, ready_to_out, CURR_STATE, outp_fifo_empty);
	input clk, reset, start;
	input [0:127] in_data;
	input in_valid;
	output reg ready_for_inp;

	output reg [0:127] out_data;				// WIll be cipher text output.
	output reg out_valid;							// Output is valid
	input ready_to_out;						// Will send when FIFO is available
	
	reg [3:0] out_fifo_data;
	output wire outp_fifo_empty;

	localparam [3:0] ST_IDLE_RESET 		= 4'd0;				localparam [3:0] ST_KEY_SET		 	= 4'd1;
	localparam [3:0] ST_PTEXT_TO_FIFO	= 4'd2;				localparam [3:0] ST_PIPE_DATA		 	= 4'd3;
	localparam [3:0] ST_SEND_DATA_OUT	= 4'd5;				localparam [3:0] ST_DONE				= 4'd6;
	localparam [3:0] ST_READY				= 4'd4;				localparam [3:0] ST_READY_TO_SEND   = 4'd7;

	output reg [3:0] CURR_STATE = 4'd0; 
	reg [3:0] NEXT_STATE = 4'd0;
	
	reg [0:127] curr_plain_text = 128'd0;
	wire [0:127] curr_cipher_text;
	
	reg [0:255] cipher_key = 128'd0;
	reg key_valid = 1'b0;
	
	reg [2:0] pipe_counter = 3'd0;	// Counter to send data at 8 clock cycle interval
	wire pipe_ready;
	
	reg start_conversion = 0, last_conversion = 0;
	
	wire ready_text, done_conversion;
	
	
	// FIFO Registers
	reg [0:127] inp_fifo_in_data = 128'd0;
	reg inp_fifo_wrreq = 1'b0;
	
	reg inp_fifo_rdreq = 1'b0;
	wire [0:127] inp_fifo_rddata;
	
	wire inp_fifo_full;
	wire inp_fifo_empty;
	reg inp_sclr = 1'b0;
	wire [3:0] inp_fifo_usedw;
	
	reg [0:127] outp_fifo_in_data ;
	reg outp_fifo_wrreq ;
	
	reg outp_fifo_rdreq = 1'b0;
	wire [0:127] outp_fifo_rddata;
	
	wire outp_fifo_full;
//	wire outp_fifo_empty;
	reg outp_sclr ;
	wire [3:0] outp_fifo_usedw;
	
	wire [0:127] cipher_text;
	reg current_output_set = 1'b0;
	reg current_data_sent = 1'b0;
	
	reg [1:0] key_storage_indicator = 2'd0;
	reg all_output_cipher_text_sent = 1'b0;
	
	reg done_signal = 1'b0;
	reg out_read_set = 1'b0;
	
	// Structural Assignments
	//INP FIFO -- Store plain text in queue.
	queue plain_text_queue (clk, inp_fifo_in_data, inp_fifo_rdreq, inp_sclr, inp_fifo_wrreq, inp_fifo_empty, inp_fifo_full, inp_fifo_rddata, inp_fifo_usedw);

	//AES Cipher Block
	AES_Decipher dut_enc (clk, reset, curr_plain_text, cipher_key, key_valid, start_conversion, last_conversion, curr_cipher_text, ready_text, pipe_ready, done_conversion);	//Enc, should send IV text
	// Start Conversion -- Set when the FIFO pipe is ready and clear in next cycle.
	// Last Conversion -- Set when the last IV data is sent into the pipe.-- Will not turn off until done_conversion signal is received.
	
	//Out FIFO -- Cipher Text queue
	queue cipher_text_queue (clk, outp_fifo_in_data, outp_fifo_rdreq, outp_sclr, outp_fifo_wrreq, outp_fifo_empty, outp_fifo_full, outp_fifo_rddata, outp_fifo_usedw);
	
	always @(posedge clk) 	begin
		if(reset == 1'b0)			// Active Low Reset -- Reset Everything for now. 
			CURR_STATE <= ST_IDLE_RESET;
		else
			CURR_STATE <= NEXT_STATE;
	end
	
	always @(*) begin
		NEXT_STATE <= CURR_STATE;
		case (CURR_STATE) 
			ST_IDLE_RESET 		: NEXT_STATE <= ST_KEY_SET;
			ST_KEY_SET			: if(key_valid == 1'b1) NEXT_STATE <= ST_PTEXT_TO_FIFO;
			ST_PTEXT_TO_FIFO	: if(start == 1'b1) NEXT_STATE <= ST_READY;	
			ST_READY 			: if(pipe_ready == 1'b1) NEXT_STATE <= ST_PIPE_DATA;
			ST_PIPE_DATA		: if(done_conversion == 1'b1) NEXT_STATE <= ST_READY_TO_SEND;
			ST_READY_TO_SEND	: if(current_output_set == 1'b1) NEXT_STATE <= ST_SEND_DATA_OUT;
			ST_SEND_DATA_OUT  : begin
				if(all_output_cipher_text_sent == 1'b1) NEXT_STATE <= ST_DONE;
				else if(current_data_sent == 1'b1) NEXT_STATE <= ST_READY_TO_SEND;
			end
			ST_DONE				: if(done_signal == 1'b1) NEXT_STATE <= ST_IDLE_RESET;
		endcase
	end
	
	always @(posedge clk) begin
		cipher_key <= cipher_key;
		out_fifo_data <= outp_fifo_usedw;
		key_storage_indicator <= key_storage_indicator;
		ready_for_inp <= ready_for_inp;
		key_valid <= key_valid;
		inp_sclr <= inp_sclr; outp_sclr <= outp_sclr;
		inp_fifo_in_data <= inp_fifo_in_data;	inp_fifo_wrreq <= inp_fifo_wrreq;
		ready_for_inp <= ready_for_inp; pipe_counter <= pipe_counter;
		inp_fifo_rdreq <= inp_fifo_rdreq;
		start_conversion <= start_conversion; last_conversion <= last_conversion;
		outp_fifo_in_data <= outp_fifo_in_data;
		outp_fifo_wrreq <= outp_fifo_wrreq; outp_fifo_rdreq <= outp_fifo_rdreq;
		all_output_cipher_text_sent <= all_output_cipher_text_sent;
		out_read_set <= out_read_set; out_valid <= out_valid;
		done_signal <= done_signal; curr_plain_text <= curr_plain_text;
		current_output_set <= current_output_set;
		current_data_sent <= current_data_sent;
		out_data <= out_data;
		if(reset == 1'b0) begin
			cipher_key <= 256'd0;
			key_storage_indicator <= 2'd0;
			ready_for_inp <= 1'b0;
			key_valid <= 1'b0;
			inp_sclr <= 1'b1;
			outp_sclr <= 1'b1;
			inp_fifo_in_data <= 128'd0;
			ready_for_inp <= 1'b0;
			inp_fifo_wrreq <= 1'b0;
			pipe_counter <= 3'd0;
			inp_fifo_rdreq <= 1'b0;
			start_conversion <= 1'b0;
			last_conversion <= 1'b0;
			outp_fifo_in_data <= 128'd0;
			outp_fifo_wrreq <= 1'b0;
			all_output_cipher_text_sent <= 1'b0;
			out_read_set <= 1'b0;
			outp_fifo_rdreq <= 1'b0;
			out_data <= 128'd0;
			out_valid <= 1'b0;
			done_signal <= 1'b0;
			curr_plain_text <= 128'd0;
			current_output_set <= 1'b0;
			current_data_sent <= 1'b0;
			out_fifo_data <= 4'd0;
		end
		else begin
			case(CURR_STATE)
				ST_IDLE_RESET : begin
					cipher_key <= 256'd0;
					key_storage_indicator <= 2'd0;
					ready_for_inp <= 1'b0;
					key_valid <= 1'b0;
					inp_sclr <= 1'b1;
					outp_sclr <= 1'b1;
					inp_fifo_in_data <= 128'd0;
					ready_for_inp <= 1'b0;
					inp_fifo_wrreq <= 1'b0;
					pipe_counter <= 3'd0;
					inp_fifo_rdreq <= 1'b0;
					start_conversion <= 1'b0;
					last_conversion <= 1'b0;
					outp_fifo_in_data <= 128'd0;
					outp_fifo_wrreq <= 1'b0;
					all_output_cipher_text_sent <= 1'b0;
					out_read_set <= 1'b0;
					outp_fifo_rdreq <= 1'b0;
					out_valid <= 1'b0;
					done_signal <= 1'b0;
					curr_plain_text <= 128'd0;
				end
				ST_KEY_SET		: begin		// Will check only if the key is not set. Input control signal pairs
					if(key_storage_indicator < 2'd2) begin		// Key Not Ready
						if(key_storage_indicator == 2'b0 && in_valid == 1'b1) begin		// First part of key
							cipher_key [0:127] <= in_data;
							key_storage_indicator <= key_storage_indicator + 1'b1;						// 128-bits written.
							ready_for_inp <= 1'b0;
						end
						else if(key_storage_indicator == 2'd1 && in_valid == 1'b1) begin	// Second Part of key
							cipher_key [128:255] <= in_data;
							key_valid <= 1'b1;
							key_storage_indicator <= key_storage_indicator + 1'b1;
							ready_for_inp <= 1'b0;
						end
						else begin
							ready_for_inp <= 1'b1;
						end
					end
					else begin
						ready_for_inp <= 1'b0;
					end
					//Allowing input and output queue to write
					inp_sclr <= 1'b0;
					outp_sclr <= 1'b0;
				end
				ST_PTEXT_TO_FIFO: begin
					if(start == 1'b0) begin
						if(in_valid == 1'b1) begin
							// Logic to Write into FIFO -- Will write only FIFO is not full. (Indicates only first 10 128-bits will be written)
							if(inp_fifo_full == 1'b0) begin
								inp_fifo_in_data <= in_data;
								inp_fifo_wrreq <= 1'b1;
								ready_for_inp <= 1'b0;
							end
						end
						else begin
							inp_fifo_wrreq <= 1'b0;
							ready_for_inp <= 1'b1;
						end
					end
					else begin
						ready_for_inp <= 1'b0;
						inp_fifo_wrreq <= 1'b0;
					end
				end
				ST_READY: begin
					ready_for_inp <= 1'b0;
					inp_fifo_wrreq <= 1'b0;
				end
				ST_PIPE_DATA : begin	
					pipe_counter <= pipe_counter + 1'b1;
					if(inp_fifo_usedw != 4'd0 || last_conversion == 1'b0) begin	//Data available in queue [Data in Queue + 1 value will be used]
						if(pipe_counter == 3'd0) begin		// Value will pass when counter is becoming 1 (Sequential)
							inp_fifo_rdreq <= 1'b1;
						end
						else if (pipe_counter == 3'd1) begin
							inp_fifo_rdreq <= 1'b0;
						end
						else if (pipe_counter == 3'd2) begin
							curr_plain_text <= inp_fifo_rddata;
						end
						else if (pipe_counter == 3'd4) begin
							start_conversion <= 1'b1;
							last_conversion <= (inp_fifo_usedw == 4'd0) ? 1'd1 : 1'd0;	// Last data to convert is known if the data_in_queue is 1 (0 indicates empty)
						end
						else
							start_conversion <= 1'b0;
					end
					else begin
						start_conversion <= 1'b0;
					end
					
					if(ready_text == 1'b1) begin
						// Logic to Write into FIFO -- Will write only FIFO is not full. (Indicates only first 10 128-bits will be written)
						if(outp_fifo_full == 1'b0) begin
							outp_fifo_in_data <= curr_cipher_text;
							outp_fifo_wrreq <= 1'b1;
						end
					end
					else begin
						outp_fifo_wrreq <= 1'b0;
					end	
				end
				ST_READY_TO_SEND : begin	// Data will be made available with out_valid status. 
													// When the ready_to_out signal is set. The FIFO's data will be taken out and out_valid will become zero and next data will populate.
					last_conversion <= 1'b0;
					outp_fifo_wrreq <= 1'b0;
					
					if(outp_fifo_usedw != 4'd0 || done_signal == 1'b0) begin	
						if(out_read_set == 1'b0) begin	// Set Read Req
							outp_fifo_rdreq <= 1'b1;
							out_read_set <= 1'b1;
							current_output_set <= 1'b0;
						end
						else if(out_read_set == 1'b1) begin
							outp_fifo_rdreq <= 1'b0;
							out_data <= outp_fifo_rddata;
							current_output_set <= 1'b1;
						end
					end
					else begin
						current_output_set <= 1'b0;
						outp_fifo_rdreq <= 1'b0;
					end
					
//					if(outp_fifo_usedw != 4'd0 || all_output_cipher_text_sent == 1'b0) begin	
//						if(out_read_set == 1'b0) begin	// Set Read Req
//							outp_fifo_rdreq <= 1'b1;
//							out_valid <= 1'b0;
//							out_read_set <= 1'b1;
//						end
//						else begin
//							outp_fifo_rdreq <= 1'b0;
//							out_data <= outp_fifo_rddata;
//							if(ready_to_out == 1'b1) begin
//								out_valid <= 1'b0;
//								out_read_set <= 1'b0;
//								if(outp_fifo_empty) 
//									all_output_cipher_text_sent <= 1'b1;
//							end
//							else
//								out_valid <= 1'b1;
//						end
//					end
				end
				ST_SEND_DATA_OUT : begin
					if(current_output_set == 1'b1) begin
						if(ready_to_out == 1'b1) begin
							out_valid <= 1'b0;
							out_read_set <= 1'b0;
							current_output_set <= 1'b0;
							if(outp_fifo_empty) begin
								all_output_cipher_text_sent <= 1'b1;
								current_data_sent <= 1'b0;
							end
							else begin
								current_data_sent <= 1'b1;
								all_output_cipher_text_sent <= 1'b0;
							end
						end
						else if(ready_to_out == 1'b0) begin
							out_valid <= 1'b1;
							current_data_sent <= 1'b0;
							all_output_cipher_text_sent <= 1'b0;
						end
					end
					else begin
						out_valid <= 1'b0;
						current_data_sent <= 1'b0;
						all_output_cipher_text_sent <= 1'b0;
					end
				end
				ST_DONE : begin
					done_signal <= 1'b1;
				end
			endcase
		end
	end
	
endmodule