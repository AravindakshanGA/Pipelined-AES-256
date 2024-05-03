module GF_Mul (clk, reset, h_data, h_valid, memory_ready, in_data, in_valid, out_mult, done_calc, GF_CR_ST);
	input wire clk, reset;
	input wire [0:127] h_data;
	input wire h_valid;
	output reg memory_ready;
	input wire [0:127] in_data;
	input wire in_valid;
	
	output reg [0:127] out_mult;
	output done_calc;
	
	output [3:0] GF_CR_ST;
	
	wire rd_enable [0:31];
	wire wr_enable [0:31];
	wire [0:3] rd_addr [0:31]; reg [0:3] wr_addr [0:31];
	reg [0:127] wr_data [0:31];
	wire [0:127] mem_data [0:31];
	
	reg [3:0] CURR_STATE; 
	reg [3:0] NEXT_STATE;
	
	reg [0:4] table_number;
	reg [0:3] counter;
	
	wire start_multiply; wire done_multiply;
	wire [0:127] out_data;
	
	reg  [0:127] x_value;
	
	assign GF_CR_ST = CURR_STATE;
	
	integer iter;
	
	localparam [3:0] ST_IDLE_RESET 		= 4'b0000;				localparam [3:0] ST_CONST_DATA	 		= 4'b0001;			
	localparam [3:0] ST_CON_MULTIPLY 	= 4'b0010;				localparam [3:0] ST_DONE_MULTIPLY		= 4'b0011;
	localparam [3:0] ST_ACQ_FETCH_INP 	= 4'b0100;				localparam [3:0] ST_ACQ_GET_MEM_DATA	= 4'b0101;
	localparam [3:0] ST_ACQ_COMPUTE		= 4'b0110;				localparam [3:0] ST_MULT_DONE				= 4'b0111;
	localparam [3:0] ST_TABLE_CHECK		= 4'b1000;				localparam [3:0] ST_RDY_H_VAL				= 4'b1001;
	
	// RESET STATE TRANSITION
	always @(posedge clk) 	begin
		if(reset == 1'b0)				// Active Low Reset
			CURR_STATE <= ST_IDLE_RESET;
		else if(h_valid == 1'b1)		// Will get when H is changed and updated 
			CURR_STATE <= ST_RDY_H_VAL;	// State holds until H valid is released
		else
			CURR_STATE <= NEXT_STATE;
	end
	
	reg calc_done;		// Register to set when all the xors are completed. (To reduce LEs)
	
	// STATE TRANSITION
	always @(CURR_STATE, done_multiply, in_valid, calc_done) begin
		NEXT_STATE <= CURR_STATE;
		case (CURR_STATE)
			ST_IDLE_RESET 		: NEXT_STATE <= ST_IDLE_RESET;
			ST_RDY_H_VAL		: NEXT_STATE <= ST_CON_MULTIPLY;
			ST_CONST_DATA		: NEXT_STATE <= ST_CON_MULTIPLY;
			ST_CON_MULTIPLY	: begin
				if(done_multiply == 1'b1) 
					NEXT_STATE <= ST_DONE_MULTIPLY;
			end
			ST_DONE_MULTIPLY	: NEXT_STATE <= ST_TABLE_CHECK;
			ST_TABLE_CHECK		:begin	
				if(table_number == 5'h1F && counter == 4'hF)
					NEXT_STATE <= ST_ACQ_FETCH_INP;
				else
					NEXT_STATE <= ST_CONST_DATA;
			end
			ST_ACQ_FETCH_INP	: if(in_valid == 1'b1) NEXT_STATE <= ST_ACQ_GET_MEM_DATA;	// 1 cycle
			ST_ACQ_GET_MEM_DATA : NEXT_STATE <= ST_ACQ_COMPUTE;									// 1 cycle
			ST_ACQ_COMPUTE : if(calc_done == 1'b1) NEXT_STATE <= ST_MULT_DONE;				// 4 cycles								// 4 cycles
			ST_MULT_DONE : NEXT_STATE <= ST_ACQ_FETCH_INP;											// 1 cycle
			default : ;
		endcase
	end
	
	// Structural Block Assignments
	
	multiply_block dut_mult (clk, reset, start_multiply, x_value, h_data, out_data, done_multiply);
	genvar j;
	generate 
		for(j=0 ; j<32; j=j+1) 	begin : mult_block 
			mult_ram dut_ram (clk, reset, rd_enable[j], wr_enable[j], rd_addr[j], wr_addr[j], wr_data[j], mem_data[j]);
			assign rd_enable[j] = (CURR_STATE == ST_ACQ_GET_MEM_DATA) ? 1'b1 : 1'b0;
			assign rd_addr[j] = in_data[(4*j) +: 4];
			assign wr_enable [j] = (CURR_STATE == ST_DONE_MULTIPLY && (table_number^j == 5'd0)) ? 1'b1 : 1'b0;
      end
	endgenerate
	
	assign done_calc = (CURR_STATE == ST_MULT_DONE) ? 1'b1 : 1'b0;
	assign start_multiply = (CURR_STATE == ST_CON_MULTIPLY) ? 1'b1 : 1'b0;
	
	//	DATA TRANSITION
	always @(CURR_STATE) begin
		table_number <= table_number;
		counter <= counter;
		memory_ready <= memory_ready;
		x_value <= x_value;
		for(iter = 0; iter < 32; iter = iter + 1) begin
			wr_addr [iter]	<= wr_addr [iter];
			wr_data [iter] <= wr_data [iter];
		end
		if(reset == 1'b0) begin
			table_number <= 5'b0;
			counter <= 4'b0;
			memory_ready <= 1'b0;
			x_value <= 128'd0;
			for(iter = 0; iter < 32; iter = iter + 1) begin
				wr_addr [iter]	<= 4'd0;
				wr_data [iter] <= 128'd0;
			end
		end
		else begin	
			case (CURR_STATE) 	
				ST_CONST_DATA : begin
					x_value <= {counter, 124'h0} >> (4 * table_number);
				end
				ST_RDY_H_VAL : begin
					table_number <= 5'b0;
					counter <= 4'b0;
					memory_ready <= 1'b0;
					x_value <= 128'd0;
					for(iter = 0; iter < 32; iter = iter + 1) begin
						wr_addr [iter]	<= 4'd0;
						wr_data [iter] <= 128'd0;
					end
				end
				ST_DONE_MULTIPLY : 	begin
					wr_addr[table_number]	<= counter;
					wr_data[table_number]	<= out_data;
				end
				ST_TABLE_CHECK: begin
					if(counter == 4'd15 && table_number != 5'h1F) begin
						table_number <= table_number + 1'b1;
					end
					counter <= counter + 1'b1;
				end
				ST_ACQ_FETCH_INP : begin
					memory_ready <= 1'b1;

				end						
				default : ;
			endcase
		end
	end 
	
	reg [1:0] mult_counter;
	
	always @(posedge clk) begin
		case (CURR_STATE)
			ST_IDLE_RESET: begin
				out_mult <= 128'd0;
				mult_counter <= 2'b00;
				calc_done <= 1'b0;
			end
			ST_ACQ_FETCH_INP : begin
				out_mult <= 128'd0;
				mult_counter <= 2'b00;
				calc_done <= 1'b0;
			end
			ST_ACQ_COMPUTE: begin
				out_mult <= out_mult ^ mem_data[(8*mult_counter)] ^ mem_data[(8*mult_counter) + 1] ^ mem_data[(8*mult_counter) + 2] ^ mem_data[(8*mult_counter) + 3]
									^ mem_data[(8*mult_counter) + 4] ^ mem_data[(8*mult_counter) + 5] ^ mem_data[(8*mult_counter) + 6] ^ mem_data[(8*mult_counter) + 7];
									
						// Consuming more LEs. Need optimization by making the mem_data to go to a demux and then get one data at a time and then write it.
				mult_counter <= mult_counter + 1'b1;
				if(mult_counter == 2'd2)	// Turns on at end of 2nd cycle.
					calc_done <= 1'b1;
			end
		endcase
	end
	
endmodule
