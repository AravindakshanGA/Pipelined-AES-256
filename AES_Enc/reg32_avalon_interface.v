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
	output wire [63:0] Q_export
);
	
	reg [0:127] in_data = 128'd0;		// Will read data from NIOS, construct 128-bit and then send to our module.
	reg in_valid = 1'd0;
	
	wire [0:127] out_data;
	reg [0:127] output_reg = 128'd0;	// Will get the output data and store it in this register. Pass it to Nios word by word.
	wire out_valid;
	
//	reg [2:0] input_states = 0;			// State numbers to assign which value corresponds to what input

	reg [31:0] command_word = 0, status_word = 0;
	reg command_start = 0;
	
	reg write_done = 0;
	reg read_done = 0;
	
	reg ready_to_out = 0;
	
	localparam [7:0] ADDR_COMMAND_WORD = 1, ADDR_STATUS_WORD=2, ADDR_INP_WORD=3 , 
			ADDR_OUTP_WORD_1 = 4, ADDR_OUTP_WORD_2 = 5, ADDR_OUTP_WORD_3 = 6, ADDR_OUTP_WORD_4 = 7 ;
	
	localparam [2:0] ST_IDLE = 1, ST_COMMAND_START = 2, ST_WRITE_DATA = 3, ST_READ_DATA = 4, ST_STATUS_RESET = 5, ST_START = 6;
	
	reg [2:0] CURR_STATE = 0; 
	reg [2:0] NEXT_STATE = 0;
	
	reg [3:0]write_count = 0;
	
	reg start = 0;
	
	localparam [1:0] CMD_SEND_INPUT = 1, CMD_GET_OUTPUT = 2, CMD_START = 3;
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
	
	AES_Pipe_Enc dut0 (clock, resetn, start, in_data, in_valid, ready_for_inp, out_data, out_valid, ready_to_out);
	
	// synchronous updates on command_word and command_start
	// Get the command word from writedata and start the command
	always  @( posedge clock ) begin
		if ( resetn == 1'b0 ) begin 
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
				if(command_word == CMD_START)
					NEXT_STATE <= ST_START;
			end
			ST_START : NEXT_STATE <= ST_IDLE;
			ST_READ_DATA :  if(read_done) NEXT_STATE <= ST_STATUS_RESET;
			ST_WRITE_DATA : if(write_done) NEXT_STATE <= ST_STATUS_RESET;
			ST_STATUS_RESET : if(status_word == 1'b0) NEXT_STATE <= ST_IDLE;
			default :  ;
		endcase
	end
	
	// synchronous updates on in_data
	always  @( posedge clock ) begin
		if ( resetn == 1'b0 ) begin 
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
		if ( resetn == 1'b0 ) begin 
			status_word <= 0 ;
		end 
		else begin
			if ( chipselect && write && (address == ADDR_STATUS_WORD) ) begin
				status_word <= 0 ;
			end 
			else if ( CURR_STATE == ST_WRITE_DATA && (write_done == 1'b1) ) begin 
				status_word <= 1 ;
			end
			else if (CURR_STATE == ST_READ_DATA && (read_done == 1'b1) ) begin 
				status_word <= 1 ;
			end
		end
	end
	
	// synchronous updates on sig_outp and status -- Write Operation
	always  @( negedge clock ) begin
		write_done <= write_done;
		output_reg <= output_reg;
		if(resetn == 1'b0) begin
			write_done <= 1'b0;
			output_reg <= 128'd0;
			start <= 1'b0;
		end
		else begin
			if (CURR_STATE == ST_START) begin
				start <= 1'b1;
			end
			else if(CURR_STATE == ST_IDLE) begin
				start <= 1'b0;
			end
			else if (CURR_STATE == ST_WRITE_DATA) begin
				if(write_count == MAX_READ_WRITE_COUNT && ready_for_inp == 1'b1) begin
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
			else if (CURR_STATE == ST_STATUS_RESET) begin
				in_valid <= 1'b0;
				write_done <= 1'b0;
				read_done <= 1'b0;
				ready_to_out <= 1'b0;
			end
		end
	end
	
	// Assign Q_export
	assign Q_export [1:0] = command_word [1:0];
	
	assign Q_export [4:2] = CURR_STATE;
	
	assign Q_export [8] = ready_to_out;
	assign Q_export [9] = out_valid;
	assign Q_export [10] = in_valid;
	assign Q_export [11] = ready_for_inp;
	
	assign Q_export [12] = read_done;
	assign Q_export [13] = write_done;
	
	assign Q_export [27:24] = write_count;
	
endmodule