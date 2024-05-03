`timescale 1 ps / 1 ps

module reg32_avalon_interface (
	input  wire        clock,
	input  wire        resetn,
	input  wire [7:0]  address,
	input  wire        read,
	output reg [31:0]  readdata,
	input  wire        write,
	input  wire [31:0] writedata, 
	input  wire chipselect, 
	output wire [31:0] Q_export
);
	
	reg [0:127] in_data = 128'd0;		// Will read data from NIOS, construct 128-bit and then send to our module.
	reg in_valid = 1'd0;
	
	wire [0:127] out_data;
	reg [0:127] output_reg = 128'd0;	// Will get the output data and store it in this register. Pass it to Nios word by word.
	wire out_valid;
	
	reg [0:255] cipher_key = 256'd0;
	reg [0:255] prev_cipher_key = 256'd0;
	
	reg [2:0] write_count = 0;
	
	reg [1:0] AAD_size = 0;
	reg [3:0] plain_text_size = 0;
	
//	reg [1:0] cipher_text_value;		// Register to indicate which value corresponds to what data. 0,1-Cipher Key 2-Others
	
	reg [2:0] input_states = 0;			// State numbers to assign which value corresponds to what input
	// 0, 1 - Cipher Text, 2 - IV Data, 3 - Size Word, 4 - AAD data, 5 - Plain Text
	
	/*
		Status bit is used to get data from the Nios and send 128-bit by bit. (Cipher Text alone in 256 bits). 
		Also Status bit is used to indicate the final completion of AES multiplication. Then the READ data states happen in chunks of 32-bit
	*/
	/*
		Data Sequence
			1. 8 words  -- Key (2 * 128)		-- This 256-bit key will be stored in separate register for key change check.
			2. 4 words  -- IV  (96)				-- (Will receive constructed data)
			3. 4 words  -- Size word			-- (Will receive constructed data)
			4. 4x words -- AAD Data				-- Send chunks of 128 bit
			5. 4y words -- Plain Text Data	-- Send chunks of 128-bit
			
	*/
	
	reg [31:0] command_word = 0, status_word = 0, sig_inp = 0, sig_outp = 0;
	reg command_start = 0;
	
	reg write_done = 0;
	reg read_done = 0;
	
	reg ready_to_out = 0;
	
	localparam [7:0] ADDR_COMMAND_WORD = 1, ADDR_STATUS_WORD=2, ADDR_INP_WORD=3 , 
			ADDR_OUTP_WORD_1 = 4, ADDR_OUTP_WORD_2 = 5, ADDR_OUTP_WORD_3 = 6, ADDR_OUTP_WORD_4 = 7 ;
	
	localparam [2:0] ST_IDLE = 1, ST_COMMAND_START = 2, ST_WRITE_DATA = 3, ST_READ_DATA = 4, ST_STATUS_RESET = 5, ST_GET_TAG = 6;
	
	reg [2:0] CURR_STATE = 0; 
	reg [2:0] NEXT_STATE = 0;
	
	localparam [1:0] CMD_SEND_INPUT = 1, CMD_GET_OUTPUT = 2, CMD_GET_TAG = 3;
	//ADDR_COMMAND_WORD to send the data to the block
	//ADDR_STATUS_WORD to check the status
	//ADDR_INP_WORD to send the input
	//ADDR_OUTP_WORD to get the output
	
	localparam [2:0] MAX_READ_WRITE_COUNT = 4 ;		// Can write or read 4*32 bits
	
	// When read signal is received, send data based on address.
	always @(*) begin
		if ( chipselect && read ) begin 
			case ( address )
				ADDR_STATUS_WORD : readdata = status_word ;
				ADDR_OUTP_WORD_1 : readdata = output_reg [0:31] ;
				ADDR_OUTP_WORD_2 : readdata = output_reg [32:63] ;
				ADDR_OUTP_WORD_3 : readdata = output_reg [64:95] ;
				ADDR_OUTP_WORD_4 : readdata = output_reg [96:127] ;
				default : readdata = 0 ;
			endcase
		end
	end
	
	wire tag_valid, tag_data_valid, ready_for_inp, key_reset;
	
	AES_GCM_Enc dut0 (clock, resetn, key_reset, in_data, in_valid, ready_for_inp, out_data, out_valid, tag_valid, ready_to_out);
	
	// synchronous updates on command_word and command_start
	// Get the command word from writedata and start the command
	always  @( posedge clock ) begin
		if ( resetn == 0 ) begin 
			command_word <= 0 ; command_start <= 0 ;
		end 
		else begin
			if ( chipselect && write && (address == ADDR_COMMAND_WORD) ) begin 
				command_word <= writedata ;
				command_start <= 1 ;
			end  
			else begin 
				command_start <= 0 ; 
			end
		end
	end
	
	always @(posedge clock) begin
		if(resetn == 1'b0)			// Active Low Reset -- Data should only reset the data. Key will not change. Hence, H calculation will be same
			CURR_STATE <= ST_IDLE;
		else
			CURR_STATE <= NEXT_STATE;
	end
	
	always @(*) begin
		NEXT_STATE <= CURR_STATE;
		case(CURR_STATE)
			ST_IDLE : if(command_start == 1'b1) NEXT_STATE <= ST_COMMAND_START;
			ST_COMMAND_START: begin
				if(command_word == CMD_SEND_INPUT)
					NEXT_STATE <= ST_WRITE_DATA;
				if(command_word == CMD_GET_OUTPUT)
					NEXT_STATE <= ST_READ_DATA;
				if(command_word == CMD_GET_TAG)
					NEXT_STATE <= ST_GET_TAG;
			end
			ST_READ_DATA :  if(read_done) NEXT_STATE <= ST_STATUS_RESET;
			ST_WRITE_DATA : if(write_done) NEXT_STATE <= ST_STATUS_RESET;
			ST_GET_TAG	 :  if(read_done) NEXT_STATE <= ST_STATUS_RESET;
			ST_STATUS_RESET : if(status_word == 1'b0) NEXT_STATE <= ST_IDLE;
			default :  ;
		endcase
	end
	
	// synchronous updates on in_data
	always  @( posedge clock ) begin
		if ( resetn == 0 ) begin 
			in_data <= 0 ;
			write_count <= 0;
		end 
		else begin
			if ( chipselect && write && (address == ADDR_INP_WORD) && write_count < MAX_READ_WRITE_COUNT) begin // Should consecutively happen only 4 times. Writing 5th time will overwrite the 1st word.
				in_data [ (32 * write_count) +: 32 ] <= writedata ;
				write_count <= write_count + 1;
			end 
			else if(write_done) begin
				// If any write data input after 4 times without sending it to block arrives, need to ignore.
				// (Actual way is to set waitrequest signal until that is complete)
				write_count <= 3'd0;
			end
		end
	end
	
	// synchronous updates on status_word
	always  @( posedge clock ) begin
		if ( resetn == 0 ) begin 
			status_word <= 0 ;
		end 
		else begin
			if ( chipselect && write && (address == ADDR_STATUS_WORD) ) begin
				status_word <= 0 ;
			end 
			else if ( CURR_STATE == ST_WRITE_DATA && (write_done == 1) ) begin 
				status_word <= 1 ;
			end
			else if ((CURR_STATE == ST_READ_DATA || CURR_STATE == ST_GET_TAG) && (read_done == 1) ) begin 
				status_word <= 1 ;
			end
		end
	end
	
	// synchronous updates on sig_outp and status -- Write Operation
	always  @( negedge clock ) begin
		write_done <= write_done;
		if(resetn == 1'b0) begin
			write_done <= 1'b0;
		end
		if (CURR_STATE == ST_WRITE_DATA) begin
			if(write_count == MAX_READ_WRITE_COUNT && ready_for_inp == 1'b1 && input_states < 3'd6) begin
				case (input_states)
					3'd0: begin
						cipher_key [0:127] <= in_data;
						input_states <= input_states + 1'b1;
					end
					3'd1: begin
						cipher_key [128:255] <= in_data;
						input_states <= input_states + 1'b1;
					end
					3'd2: begin
						input_states <= input_states + 1'b1;
					end
					3'd3: begin	//SIZE Word
						AAD_size <= in_data [32:63] >> 7;				//Right Shift 7 times (Divide by 128). Get the count of data
						plain_text_size <= in_data [96:127] >> 7;		//Right Shift 7 times (Divide by 128). Get the count of data
						input_states <= input_states + 1'b1;
					end
					3'd4: begin
						if(AAD_size > 0) begin
							AAD_size <= AAD_size - 1'b1;
						end
						if(AAD_size == 0) begin
							input_states <= input_states + 1'b1;
						end
					end
					3'd5: begin
						if(plain_text_size > 0) begin
							plain_text_size <= plain_text_size - 1'b1;
						end
						if(plain_text_size == 0) begin
							input_states <= input_states + 1'b1;
						end
					end
					default : ;
				endcase
				in_valid <= 1'b1;
				write_done <= 1'b1;			// Indicating that the given data is passed to the AES block to get the next data from the NIOS
			end
			else begin
				in_valid <= 1'b0;
				write_done <= 1'b0;
			end
		end
		else if (CURR_STATE == ST_READ_DATA) begin
			if(out_valid == 1'b1) begin
				ready_to_out <= 1'b1;
				output_reg <= out_data;
				read_done <= 1'b1;
			end
			else begin
				ready_to_out <= 1'b0;
				read_done <= 1'b0;
			end
		end
		else if (CURR_STATE == ST_GET_TAG) begin
			if(out_valid == 1'b1 && tag_valid == 1'b1) begin
				ready_to_out <= 1'b1;
				output_reg <= out_data;
				read_done <= 1'b1;
			end
			else begin
				ready_to_out <= 1'b0;
				read_done <= 1'b0;
			end
		end
		else if (CURR_STATE == ST_STATUS_RESET) begin
			in_valid <= 1'b0;
			write_done <= 1'b0;
			read_done <= 1'b0;
			ready_to_out <= 1'b0;
		end
	end
	
	assign Q_export = readdata;   // something useful to show on LEDs -- Only status is shown.
	
endmodule


//module reg32_avalon_interface (clock, resetn, writedata, readdata, write, read,
//		byteenable, chipselect, Q_export);
//		
//	input clock, resetn, read, write, chipselect; input [3:0] byteenable;
//	input [31:0] writedata; output reg [31:0] readdata; output [31:0] Q_export;
//	
//	reg [3:0] write_count = 0 ; reg [3:0] read_count = 15 ;
//	reg [3:0] count = 0 ;
//	
//	reg [0:127] in_data;		// Will read data from NIOS, construct 128-bit and then send to our module.
//	reg in_valid;
//	
//	reg [0:127] output_reg;	// Will get the output data and store it in this register. Pass it to Nios word by word.
//	wire [0:127] out_data;
//	wire out_valid;
//	
//	reg [0:255] cipher_key;
//	reg [0:255] prev_cipher_key;
//	
//	reg [2:0] in_data_write_count = 0;
//	
//	reg [1:0] AAD_size = 0;
//	reg [3:0] plain_text_size = 0;
//	
////	reg [1:0] cipher_text_value;		// Register to indicate which value corresponds to what data. 0,1-Cipher Key 2-Others
//	
//	reg [2:0] input_states;			// State numbers to assign which value corresponds to what input
//	// 0, 1 - Cipher Text, 2 - IV Data, 3 - Size Word, 4 - AAD data, 5 - Plain Text
//	
//	/*
//		Status bit is used to get data from the Nios and send 128-bit by bit. (Cipher Text alone in 256 bits). 
//		Also Status bit is used to indicate the final completion of AES multiplication. Then the READ data states happen in chunks of 32-bit
//	*/
//	/*
//		Data Sequence
//			1. 8 words  -- Key (2 * 128)		-- This 256-bit key will be stored in separate register for key change check.
//			2. 4 words  -- IV  (96)				-- (Will receive constructed data)
//			3. 4 words  -- Size word			-- (Will receive constructed data)
//			4. 4x words -- AAD Data				-- Send chunks of 128 bit
//			5. 4y words -- Plain Text Data	-- Send chunks of 128-bit
//			
//	*/
//	
//	/*
//		FSM Needed to send chunks of data at different calculations
//	*/
//	
//	localparam READ_REQ=0, WRITE_REQ=1 ;
//	reg prev_request = WRITE_REQ ; // 1=write, 0==read
//	
//	localparam [2:0] INVALID_READ_COUNT=7 ;
//	localparam [3:0] MAX_WRITE_COUNT = 9 ;
//	localparam [2:0] MAX_READ_COUNT = 5 ;
//	localparam [3:0] MAX_COUNT = 3 ;
//	
//	localparam [2:0] IN_DATA_MAX_WRITE_COUNT = 4;
//	
//	wire ready_to_out;
//	wire tag_valid;
//	reg write_done;
//	
//	wire ready_for_inp;
//	
//	reg key_reset;
//	
//	assign status_reg = (write_done | ready_to_out) ? 1'b1 : 1'b0;
//	
//	AES_GCM_Enc dut0 (clock, resetn, key_reset, in_data, in_valid, ready_for_inp, out_data, out_valid, tag_valid, ready_to_out);
//	
////	reg [31:0] temp_calc_mem [0:17] ;		// 3 * Template MAC
//	
//	always @( negedge clock ) begin		// Changing this to negedge as the AES_GCM level blocks depend on this data. So data should be made exactly available at the posedge
//		if ( resetn==1'b0 ) begin 
//			in_data_write_count <= 0 ; 
//			read_count <= INVALID_READ_COUNT ; // invalid read_count hack
//			prev_request<=WRITE_REQ ;
//			write_done <= 0 ;
//			in_valid <= 1'b0;
//			AAD_size <= 0;
//			input_states <= 1'b0;
//		end
//		else begin
//			if ( chipselect && write ) begin 
//				prev_request <= WRITE_REQ ; 
//				write_done <= 0 ;
//				if ( in_data_write_count < IN_DATA_MAX_WRITE_COUNT ) begin 
//					in_data_write_count <= in_data_write_count + 1 ; 
//					in_data [ (32*in_data_write_count) +: 32 ] <= writedata ;
//				end
//			end
//			else if ( chipselect && read && ( prev_request != WRITE_REQ ) ) begin
//				prev_request <= READ_REQ ; 
//			end 
//			else if ( chipselect && read && ( prev_request==WRITE_REQ ) ) begin
//				prev_request <= READ_REQ ; 
//				if ( read_count == INVALID_READ_COUNT ) begin 
//					read_count <= 1 ; 
//				end 
//				else if ( read_count < MAX_READ_COUNT  ) begin 
//					read_count <= read_count + 1 ; 
//				end
//				else if ( read_count == MAX_READ_COUNT ) begin
//					read_count <= INVALID_READ_COUNT ;  // indicating ready-ness for status check and next write.
//					write_count <= 0;
//				end
//			end 
//			else begin // Will happen only when both of the read and write lines are OFF
//				// a placeholder for a general multicycle computation ... [128-bit received]
//				if (in_data_write_count==IN_DATA_MAX_WRITE_COUNT && ready_for_inp == 1'b1 && input_states < 3'd6) begin
//					case (input_states)
//						3'd0: begin
//							cipher_key [0:127] <= in_data;
//							input_states <= input_states + 1'b1;
//						end
//						3'd1: begin
//							cipher_key [128:255] <= in_data;
//							input_states <= input_states + 1'b1;
//						end
//						3'd2: begin
//							input_states <= input_states + 1'b1;
//						end
//						3'd3: begin	//SIZE Word
//							AAD_size <= in_data [32:63] >> 7;				//Right Shift 7 times (Divide by 128). Get the count of data
//							plain_text_size <= in_data [96:127] >> 7;		//Right Shift 7 times (Divide by 128). Get the count of data
//							input_states <= input_states + 1'b1;
//						end
//						3'd4: begin
//							if(AAD_size > 0) begin
//								AAD_size <= AAD_size - 1'b1;
//							end
//							if(AAD_size == 0) begin
//								input_states <= input_states + 1'b1;
//							end
//						end
//						3'd5: begin
//							if(plain_text_size > 0) begin
//								plain_text_size <= plain_text_size - 1'b1;
//							end
//							if(plain_text_size == 0) begin
//								input_states <= input_states + 1'b1;
//							end
//						end
//						default : ;
//					endcase
//					in_valid <= 1'b1;
//					in_data_write_count <= 3'd0;
//					write_done <= 1;			// Indicating that the given data is passed to the AES block to get the next data from the NIOS
//				end
//				else begin
//					in_valid <= 1'b0;
//				end
//				
//				/*
//					LOGIC HERE
//				*/
//				
//			end 
//		end
//	end
//	
//	always @(*) begin
//		if ( chipselect && read && (read_count != INVALID_READ_COUNT) ) begin 
//			//Read operation flow
//			readdata <= output_reg[(32*(read_count-1)) +: 32] ;
//		end 
//		else if ( chipselect && read ) begin 
//			readdata <= status_reg ; // report status
//		end 
//		else begin 
//			readdata <= 32'bz ; 
//		end
//		if(out_valid == 1'b1) begin
//			output_reg <= out_data;
//		end
//	end
//	assign Q_export = readdata;   // something useful to show on LEDs -- Only status is shown.
//endmodule