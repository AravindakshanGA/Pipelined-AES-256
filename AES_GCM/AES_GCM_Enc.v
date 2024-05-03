module AES_GCM_Enc (clk, reset, key_reset,
				in_data, in_valid, ready_for_inp, out_data, out_valid, tag_data_out, ready_to_out, CR_ST, H_V, GF_CR_ST,
					memory_ready);
	input clk, reset;
	input key_reset;								// [Key Replacement Policy Added]
//	input IV_set;								// IV_Set will be set for 1 clock cycle when the in_data is set along with in_valid. [Reset will trigger to this place only]
//	input size_word_set;						// size_word_set will be set for 1 clock cycle when the in_data is set with size_word_data [128-bit constructed as required]
	input [0:127] in_data;					// Will be AAD data in as well as plain text in -- Will also take 256 key in set of 2 chunks, 1 chunk of IV and 1 chunk of size_word. (400+ pins optimized)
	input in_valid;							// Give 1 and a data from FIFO
	output reg ready_for_inp;					// Will set 1 and then only data will come.
	
	//Any change in the valid bits will indicate the change in the value has been identified and then we will consider the input which is obtained
	
//	output ready_for_in;						// When it is set to 1. We can read a data from Input FIFO. (Will enable once output of each IV stage is received)
	output [0:127] out_data;				// WIll be cipher text output.
	output reg out_valid;							// Output is valid
//	output reg [0:127] tag;						// 128-bit tag value to compare the authenticated data
	output reg tag_data_out;
	input ready_to_out;						// Will send when FIFO is available
	
	output wire [3:0] CR_ST;
//	output wire [8:0] PT_SIZE;
	output wire H_V;
	output wire [3:0] GF_CR_ST;
	output wire memory_ready;
	
	/*
		KEY REPLACEMENT POLICY:
			A key will not be replaced very often as per algorithm. However, a provision is added to reset the key. 
			NOTE : This operation is very costly as all the memory data will be recomputed consuming lot of time (Approx. 1.3ms at 50MHz Clock)
			
			To do a key replacement. The key_set bit and the reset bit should be held up for 1000 clock cycles continuously. 
			This inturn trigger a signal which will reset the entire flow.
	*/
	
	// Read input plaintext data from a FIFO and write the output ciphertext data to a FIFO
	// We can write input data using a testbench for now and read the output from a queue.
	// Send IV data at every 7 clocks (should be dual side acknowledged)

	/*
		UPDATED: 
			Flow will work like below.
				Input will be obtained from Avalon MM Interface and stored in respective places and pass to respective modules. 
				Output cipher text will be obtained and then put in a queue and also pass it to the GF_Mul block. 
				Read data from the cipher text FIFO one by one and send it via Avalon MM. 
				(For now, avalon MM will send data as direct string. Later, will try file handling)
	*/

	/*
		Flowchart with Avalon MM-Interface.
			1. Nios-II Processor will give the following things as chunks of 32-bits in order.
				a. 256-bit key (8 chunk set) -- Followed by key received signal
				b. 96-bit IV 	(3 chunk set) -- Followed by IV received signal
				c. Size of AAD and Plain Text (1 chunk - 32 bit --> 16 bit AAD Size (X-bits) and 16 bit Plain Text Size (Y-bits))
				d. AAD Data		(ceil(X/16) chunk set) -- Followed by AAD received signal			-- Restricting size of AAD to 128-bit of 2 chunks
				e. Plain Text 	(ceil(Y/16) chunk set) -- Followed by Plain Text Received Signal	-- Restricting size of Plain Text queue as 128-bit of 16 chunks max
					(At the end of each item, a set bit will come indicating the state transition)
			2. This things will sit in the following places. 
				a. Key 		-- Will be received and put in a register and then pass it with key received signal to AES_GCM block. (FSM State changes and key_expansion algorithm and Mem Map for H starts)
				b. IV			-- Will be stored in a 96-bit register and sent to AES block
				c. Size of AAD and Plain Text -- Stored in a 32-bit register and send to AES block. (Will use them for iterations and data parsing)
				d. AAD		-- Will be sent one-by-one and put in a register (Can have register size of max [0:128][0:1] -- 256 bits max)
				e. Plain Text -- Will be sent one-by-one and put in a FIFO queue
	*/
	
	/*
		STATES: 
			1. ST_IDLE_RESET
			2. ST_KEY_SET
			3. ST_IV_SET
			4. ST_SIZE_SET
			5. ST_AAD_TO_FIFO
			6. ST_PLAIN_TEXT_TO_FIFO
			7. ST_ZERO_ENC
			8. ST_MULT_MEM_CONST
			9. ST_PIPE_DATA
			10. ST_SEND_DATA_OUT
			11. ST_DONE
	*/
	
	localparam [3:0] ST_IDLE_RESET 		= 4'd0;				localparam [3:0] ST_KEY_SET		 		= 4'd1;			
	localparam [3:0] ST_IV_SET			 	= 4'd2;				localparam [3:0] ST_SIZE_SET				= 4'd3;
	localparam [3:0] ST_AAD_TO_REG	 	= 4'd4;				localparam [3:0] ST_PTEXT_TO_FIFO		= 4'd5;
	localparam [3:0] ST_ZERO_ENC			= 4'd6;				localparam [3:0] ST_MULT_MEM_CONST		= 4'd7;
	localparam [3:0] ST_PIPE_DATA		 	= 4'd8;				localparam [3:0] ST_SEND_TAG_OUT			= 4'd9;			
	localparam [3:0] ST_SEND_DATA_OUT	= 4'd10;				localparam [3:0] ST_DONE					= 4'd11;	
	
	reg [3:0] CURR_STATE; 
	reg [3:0] NEXT_STATE ;
	
	wire [0:127] curr_plain_text;
	wire [0:127] curr_cipher_text;
	
	reg signed [0:15] aad_size;
	reg signed [0:15] plain_text_size; 
	reg [0:15] actual_plain_text_size ;

	reg [7:0] no_of_extra_zeroes ;

	reg [1:0] aes_initial_calc ;
	
	reg [0:127] h_value ;
	reg h_ready ;
	
	reg [0:255] cipher_key ;
	reg key_valid ;
	
	reg [0:95] IV_data ;
	reg IV_valid ;
	
	reg [0:127] size_word ;
	
	wire [0:127] aes_input_text;
	reg [4:0] aes_counter ;
	
	wire start_conversion, last_conversion;
	
	reg data_size_set ;			// Will be set when size_word arrives and the values are initialized. Used for state transition
	reg aad_written ;				// Status register to indicate AAD is written
	reg plain_text_written ;		// Status register to indicate Plain Text is written
	
	reg trigger_key_change_reset ;
	reg [9:0] key_reset_counter ;
	
	reg [0:127] tag ;
	reg tag_valid ;
	
	always @(posedge clk) begin
		if(reset == 1'b0) begin
			key_reset_counter <= 10'd0;
			trigger_key_change_reset <= 1'b0;
		end
		if(key_reset == 1'b1) begin
			key_reset_counter <= key_reset_counter + 1'b1;
			if(key_reset_counter > 10'd1000) 	// Key Change enabled. -- Will Last around for 24 cycles.
				trigger_key_change_reset <= 1'b1;
			else 
				trigger_key_change_reset <= 1'b0;
		end
		else begin
			trigger_key_change_reset <= 1'b0;
			key_reset_counter <= 10'd0;
		end
	end
	
	reg [0:127] AAD [0:1] ;
	reg [1:0] AAD_store_counter  ;
	reg [1:0] AAD_input_counter ;
	
	reg [0:127] inp_fifo_in_data ;
	reg inp_fifo_wrreq ;
	
	reg inp_fifo_rdreq ;
	wire [0:127] inp_fifo_rddata;
	
	wire inp_fifo_full;
	wire inp_fifo_empty;
	reg inp_sclr ;
	wire [3:0] inp_fifo_usedw;
	
	reg [0:127] outp_fifo_in_data ;
	reg outp_fifo_wrreq ;
	
	reg outp_fifo_rdreq ;
	wire [0:127] outp_fifo_rddata;
	
	wire outp_fifo_full;
	wire outp_fifo_empty;
	reg outp_sclr ;
	wire [3:0] outp_fifo_usedw;
		
	reg [3:0] data_in_queue;		// Register to know how many data is there in queue. Used to calculate IV+counter
	
	reg [2:0] aes_pipe_counter ;
	
	reg [0:127] temp_cipher_text ;
	
	reg [0:127] GF_MUL_in_data ;
	reg GF_MUL_in_valid ;
	
	wire [0:127] cipher_text;
	
	wire [0:127] mult_in;
	
	wire [0:127] out_mult;
	
	wire pipe_ready;
	
	reg done_signal ;
	
	wire mult_result_valid;
	
	reg [0:127] temp_multH_data ;
	wire [0:127] multiplier_in_data;
	
	reg cipher_text_data_available;
	
	reg [0:127] zero_cipher_text ;
	reg zero_cipher_text_valid ;
	
	reg init_start_conversion, init_last_conversion ;
	reg aes_start_conversion, aes_last_conversion ;
	
	reg all_output_cipher_text_sent;
	reg tag_sent_out;
	
	wire [0:127] one_array;
	assign one_array = 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
	
	reg [1:0] output_state_rotation ;		
	// Minor state transitions for taking the data and passing it to respective modules.
	// 00 --> FIFO_RD_REQ_SENT, 01 --> CALC_MULT_IN_AND_CIPHER_TEXT, 10 --> CALL_TO_WR_REQ_AND_GF_MUL, 11 --> DONE
	
	reg [1:0] tag_generation_stage ;		// FINAL state transition for finding GMUL and TAG
	// 00 --> READY, 01 --> SIZE_SEND, 10 --> ZERO_CIPHER_SEND, 11 --> TAG_RECEIVED
	
	reg is_last_pipe_data_out ;
	
	reg out_read_set ;
	
	wire ready_text, done_conversion;
//	wire memory_ready;
	
	reg [1:0] key_storage_indicator ;			// Register to indicate which part of key is currently obtained. (0 - Reset / [0:127] , 1 - [128:255] / 2+ -- Key Received)
	
	// TOOD: Need a signal to indicate a key or IV change has been done. A reset will be given after changing the key to re-init all the data.
	// To add the same to RESET STATE TRANSITION also.
	// For now, assuming the key and IV once given will not be changed. 
	
	// RESET STATE TRANSITION
	always @(posedge clk) 	begin
		if(trigger_key_change_reset == 1'b1)	begin	// Key Change is the highest priority. Will happen very rare. (This is not used. But a provision has been provided)
			CURR_STATE <= ST_IDLE_RESET;
		end
		else begin
			if(reset == 1'b0)	begin			// Active Low Reset -- Data should only reset the data. Key will not change. Hence, H calculation will be same
				CURR_STATE <= ST_IDLE_RESET;
			end
			else
				CURR_STATE <= NEXT_STATE;
		end
	end
	
	
	// Structural Assignments
	//INP FIFO -- Store plain text in queue.
	queue plain_text_queue (clk, inp_fifo_in_data, inp_fifo_rdreq, inp_sclr, inp_fifo_wrreq, inp_fifo_empty, inp_fifo_full, inp_fifo_rddata, inp_fifo_usedw);

	//AES Cipher Block
	AES_Cipher dut_enc (clk, reset, curr_plain_text, cipher_key, key_valid, aes_initial_calc, start_conversion, last_conversion, curr_cipher_text, ready_text, pipe_ready, done_conversion);	//Enc, should send IV text
	// Start Conversion -- Set when the FIFO pipe is ready and clear in next cycle.
	// Last Conversion -- Set when the last IV data is sent into the pipe.-- Will not turn off until done_conversion signal is received.
	
	//GF_2_128 Multiplication Block
	GF_Mul mult_block (clk, reset, h_value, h_ready, memory_ready, GF_MUL_in_data, GF_MUL_in_valid, out_mult, mult_result_valid, GF_CR_ST);
	
	//Out FIFO -- Cipher Text queue
	queue cipher_text_queue (clk, outp_fifo_in_data, outp_fifo_rdreq, outp_sclr, outp_fifo_wrreq, outp_fifo_empty, outp_fifo_full, outp_fifo_rddata, outp_fifo_usedw);
	
	assign curr_plain_text = (pipe_ready == 1'b1 && aes_initial_calc == 2'd1) ? 128'd0 : aes_input_text;
	assign start_conversion = (init_start_conversion | aes_start_conversion) ? 1'b1 : 1'b0;
	assign last_conversion = (init_last_conversion | aes_last_conversion) ? 1'b1 : 1'b0;
	
	assign cipher_text = temp_cipher_text ^ inp_fifo_rddata;
	assign mult_in = cipher_text ^ temp_multH_data;
	assign aes_input_text = (IV_valid == 1'b1) ? {IV_data, 27'd0, aes_counter} : 128'd0;
	
	assign multiplier_in_data = (~cipher_text_data_available) ? ((AAD_store_counter != 2'd0) ? (AAD[AAD_input_counter] ^ temp_multH_data ) : (tag_generation_stage == 2'd1 ? size_word ^ temp_multH_data : 128'd0)): mult_in;
	
	assign out_data = (CURR_STATE == ST_SEND_DATA_OUT) ? outp_fifo_rddata : (CURR_STATE == ST_SEND_TAG_OUT) ? tag : 128'd0;
	
	//Temp debug signals
	assign CR_ST = CURR_STATE;
	assign PT_SIZE = (plain_text_size >> 7);
	assign H_V = h_ready;
	
	// STATE TRANSITION
	always @(CURR_STATE, key_valid, IV_valid, data_size_set, aad_written, plain_text_written, h_ready, memory_ready, tag_valid, tag_sent_out, all_output_cipher_text_sent, done_signal) begin
		NEXT_STATE = CURR_STATE;
		case (CURR_STATE)
			ST_IDLE_RESET 		: begin																					// Initial Reset State. Held during reset is low and when the key_change has been detected. 
				if(key_valid == 1'b0) NEXT_STATE = ST_KEY_SET;
				else NEXT_STATE = ST_IV_SET;
			end
			ST_KEY_SET			: if(key_valid == 1'b1) NEXT_STATE = ST_IV_SET;								// Key has obtained. Will set it in a register.
			ST_IV_SET			: if(IV_valid == 1'b1) NEXT_STATE = ST_SIZE_SET;							// IV has obtained. Will set it in a register
			ST_SIZE_SET			: if(data_size_set == 1'b1) NEXT_STATE = ST_AAD_TO_REG;					// Size has obtained. Make two counters to put data in respective places.
			ST_AAD_TO_REG		: if(aad_written == 1'b1) NEXT_STATE = ST_PTEXT_TO_FIFO;					// Write AAD to respective registers	
			ST_PTEXT_TO_FIFO	: if(plain_text_written == 1'b1) NEXT_STATE = ST_ZERO_ENC;				// Write Plain Text to FIFO
			ST_ZERO_ENC			: if(h_ready == 1'b1) NEXT_STATE = ST_MULT_MEM_CONST;						// If h_valid is 1. The Zero encryption is done.
			ST_MULT_MEM_CONST	: if(memory_ready == 1'b1) NEXT_STATE = ST_PIPE_DATA;						// If GF_mul's memory is created. We are ready to compute.
			ST_PIPE_DATA		: if(tag_valid == 1'b1) NEXT_STATE = ST_SEND_DATA_OUT;
			ST_SEND_DATA_OUT	: if(all_output_cipher_text_sent == 1'b1) NEXT_STATE = ST_SEND_TAG_OUT;
			ST_SEND_TAG_OUT	: if(tag_sent_out == 1'b1) NEXT_STATE = ST_DONE;
			ST_DONE				: if(done_signal == 1'b1) NEXT_STATE = ST_IDLE_RESET;
			default : ;
		endcase
	end
	
	always @(posedge clk) begin
		aes_initial_calc 	<= aes_initial_calc;
		init_start_conversion <= init_start_conversion;
		init_last_conversion <= init_last_conversion;
		h_ready <= h_ready;
		if(reset == 1'b0) begin
			aes_initial_calc 	<= 2'd0;
			init_start_conversion <= 1'b0;
			init_last_conversion <= 1'b0;
			h_ready <= 1'b0;
		end
		if(pipe_ready == 1'b1) begin
			// Indicates that the AES block is ready. We will set aes_initial_flag (Initially Hi-Z) with all zeroes in curr_plain_text.
			// The conversion will complete and data with ready_text. Once initial flag is identified to be 0, we can find the initial conversion of 0 is running.
			// Once the data is obtained, we will store the data in H and then set initial flag to 1. 
			if (aes_initial_calc == 2'd0) begin
				aes_initial_calc <= 2'd1;
				init_start_conversion <= 1'b1;
				init_last_conversion <= 1'b1;
			end
			else if (aes_initial_calc == 2'd1) begin
				init_start_conversion <= 1'b0;
				if(done_conversion == 1'b1) begin
					h_value <= curr_cipher_text;
					h_ready <= 1'b1;
					aes_initial_calc <= 2'd2;
					init_last_conversion <= 1'b0;
				end
			end
			else if (aes_initial_calc == 2'd2 && CURR_STATE == ST_MULT_MEM_CONST) begin
				h_ready <= 1'b0;		// H-Ready should last until it crosses the ZERO_ENC Stage
			end
		end
	end
	
	always @(posedge clk) begin
		aad_size <= aad_size;
		plain_text_size <= plain_text_size;
		AAD_store_counter <= AAD_store_counter;
		AAD_input_counter <= AAD_input_counter;
		aad_written <= aad_written;
		inp_fifo_wrreq <= inp_fifo_wrreq;
		inp_fifo_in_data <= inp_fifo_in_data;
		inp_sclr	<= inp_sclr;
		outp_sclr <= outp_sclr;
		aes_pipe_counter <= aes_pipe_counter;
		data_in_queue <= data_in_queue;
		aes_counter		 	<= aes_counter;
		output_state_rotation <= output_state_rotation;
		inp_fifo_rdreq <= inp_fifo_rdreq;
		outp_fifo_wrreq <= outp_fifo_wrreq;
		outp_fifo_rdreq <= outp_fifo_rdreq;
		ready_for_inp <= ready_for_inp;
		temp_multH_data <= temp_multH_data;
		cipher_text_data_available <= cipher_text_data_available;
		zero_cipher_text <= zero_cipher_text;
		zero_cipher_text_valid <= zero_cipher_text_valid;
		actual_plain_text_size <= actual_plain_text_size;
		no_of_extra_zeroes <= no_of_extra_zeroes;
		tag_generation_stage <= tag_generation_stage;
		tag <= tag;
		tag_valid <= tag_valid;
		out_read_set <= out_read_set;
		out_valid <= out_valid;
		cipher_key <= cipher_key;
		IV_data <= IV_data;
		IV_valid <= IV_valid;
		size_word <= size_word;
		data_size_set <= data_size_set;
		aes_start_conversion <= aes_start_conversion;
		aes_last_conversion <= aes_last_conversion;
		done_signal <= done_signal;
		tag_data_out <= tag_data_out;
		key_valid <= key_valid;
		key_storage_indicator <= key_storage_indicator;
		all_output_cipher_text_sent <= all_output_cipher_text_sent;
		tag_sent_out <= tag_sent_out;
		plain_text_written <= plain_text_written;
		case (CURR_STATE)
			ST_IDLE_RESET : begin
				aad_size <= 16'd0;
				plain_text_size <= 16'd0;
				AAD_store_counter <= 1'b0;
				AAD_input_counter <= 1'b0;
				aad_written <= 1'b0;
				inp_fifo_wrreq <= 1'b0;
				inp_fifo_in_data <= 128'd0;
				inp_sclr	<= 1'b0;
				outp_sclr <= 1'b0;
				aes_pipe_counter <= 3'd0;
				data_in_queue <= 3'd0;
				aes_counter		 	<= 5'd1;
				output_state_rotation <= 2'd0;
				inp_fifo_rdreq <= 1'b0;
				outp_fifo_wrreq <= 1'b0;
				outp_fifo_rdreq <= 1'b0;
				ready_for_inp <= 1'b0;
				temp_multH_data <= 128'd0;
				cipher_text_data_available <= 1'b0;
				zero_cipher_text <= 128'd0;
				zero_cipher_text_valid <= 1'b0;
				actual_plain_text_size <= 16'd0;
				no_of_extra_zeroes <= 8'd0;
				tag_generation_stage <= 2'd0;
				tag <= 128'd0;
				tag_valid <= 1'b0;
				out_read_set <= 1'b0;
				out_valid <= 1'b0;
				cipher_key <= 256'd0;
				IV_data <= 96'd0;
				IV_valid <= 1'd0;
				size_word <= 128'd0;
				data_size_set <= 1'b0;
				aes_start_conversion <= 1'b0;
				aes_last_conversion <= 1'b0;
				done_signal <= 1'b0;
				tag_data_out <= 1'b0;
				key_valid <= 1'b0;
				key_storage_indicator <= 2'd0;
				all_output_cipher_text_sent <= 1'b0;
				tag_sent_out <= 1'b0;
				plain_text_written <= 1'b0;
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
			end
			ST_IV_SET		: begin			// Create 128-bit input plain text and have the first data ready for AES Pipe. Will trigger the transaction only when it goes to ST_PIPE_DATA
				out_valid <= 1'b0;
				if(IV_valid == 1'd0) begin		// IV Not Ready
					if(in_valid == 1'b1) begin	
						IV_data <= in_data >> 32;							// Ignore the last 32 bits (Counter will append it)
						IV_valid <= 1'b1;
						ready_for_inp <= 1'b0;
					end
					else begin
						ready_for_inp <= 1'b1;
					end
				end
				else begin
					ready_for_inp <= 1'b0;
				end
			end
			ST_SIZE_SET: begin
				if(data_size_set == 1'd0) begin		// Size_word Not Ready
					if(in_valid == 1'b1) begin
						size_word <= in_data;
						aad_size <= in_data [48:63];					// Max-Value 256		-- To Register
						plain_text_size <= in_data [112:127];		// Max-Value 2048		-- To Queue
						inp_sclr <= 1'b1;										// New data to be written to Queue. Hence, clearing queue
						outp_sclr <= 1'b1;									// Clear output queue.
						AAD_store_counter <= 2'd0;
						data_size_set <= 1'b1;
						ready_for_inp <= 1'b0;
					end
					else begin
						ready_for_inp <= 1'b1;
					end
				end
				else begin
					ready_for_inp <= 1'b0;
				end
			end
			ST_AAD_TO_REG: begin
				if(aad_size != 16'd0) begin
					if(in_valid == 1'b1) begin
						AAD [AAD_store_counter] <= in_data;
						aad_size <= ((aad_size - 128)>0) ? aad_size - 128 : 0;							// 128-bits written.
						AAD_store_counter <= AAD_store_counter + 1'b1;
						ready_for_inp <= 1'b0;
					end
					else begin
						ready_for_inp <= 1'b1;
					end
				end
				else begin
					inp_sclr <= 1'b0;				// Removing clr signal to write plain_text data to FIFO.
					aad_written <= 1'b1;
					ready_for_inp <= 1'b0;
				end
			end
			ST_PTEXT_TO_FIFO: begin
				if(plain_text_size != 16'd0) begin
					if(in_valid == 1'b1) begin
						// Logic to Write into FIFO -- Will write only FIFO is not full. (Indicates only first 10 128-bits will be written)
						if(~inp_fifo_full) begin
							inp_fifo_in_data <= in_data;
							inp_fifo_wrreq <= 1'b1;
							actual_plain_text_size <= plain_text_size - 128;
							plain_text_size <= ((plain_text_size - 128)>0) ? plain_text_size - 128 : 0;		// 128-bits written
							ready_for_inp <= 1'b0;
						end
					end
					else begin
						inp_fifo_wrreq <= 1'b0;
						ready_for_inp <= 1'b1;
					end
				end
				else begin
					plain_text_written <= 1'b1;
					no_of_extra_zeroes <= 128 - (actual_plain_text_size % 128) ;
					data_in_queue <= inp_fifo_usedw + 1'b1;		//Get the number of words written into the FIFO (Added 1 to take initial data into account)	//Minor Glitch observed. However, the output is valid. 
					ready_for_inp <= 1'b0;
					inp_fifo_wrreq <= 1'b0;
					outp_sclr <= 1'b0;				// Allowing data to write to output queue
				end
			end
			ST_ZERO_ENC: begin
				ready_for_inp <= 1'b0;
				inp_fifo_wrreq <= 1'b0;
				outp_sclr <= 1'b0;
			end
			ST_PIPE_DATA: begin
				/* Set rd_req to FIFO at the 0th cycle if FIFO is not empty
					Get data from FIFO at the 1st cycle, also check if the FIFO is empty. If empty, we know that the current data is the last one in the pipe.
					Pass the data to FIFO (along with last_conversion if needed) along with start_conversion signal at the 2nd cycle.
					Pass AAD at the 1st cycle.
				*/
				// IV + Counter data sending
				aes_pipe_counter <= aes_pipe_counter + 1'b1;
				if(data_in_queue != 4'd0) begin	//Data available in queue [Data in Queue + 1 value will be used]
					if(aes_pipe_counter == 3'd0) begin		// Value will pass when counter is becoming 1 (Sequential)
						aes_start_conversion <= 1'b1;
						aes_last_conversion <= (data_in_queue == 4'd1) ? 1'd1 : 1'd0;	// Last data to convert is known if the data_in_queue is 1 (0 indicates empty)
						data_in_queue <= data_in_queue - 1'b1;	
					end
					//Set to 2 to avoid data hazards
					else if(aes_pipe_counter == 3'd2) begin	// Data sent at counter became 1 and start_conversion become zero at next cycle. Now increment the next IV data
						aes_counter <= aes_counter + 1'b1;
					end
					else
						aes_start_conversion <= 1'b0;
				end
				else begin
					aes_start_conversion <= 1'b0;
				end
				
				//AAD_Data_Sending	(Mult_h * AAD)
				if(AAD_store_counter != 2'd0 || cipher_text_data_available == 1'b1 || tag_generation_stage >= 2'd1) begin
					if(aes_pipe_counter == 3'd2) begin
						GF_MUL_in_data <= multiplier_in_data;
						GF_MUL_in_valid <= 1'b1;
						if(AAD_store_counter != 2'd0) begin
							AAD_input_counter <= AAD_input_counter + 1'b1;
							AAD_store_counter <= AAD_store_counter - 1'b1;
						end
						if(cipher_text_data_available == 1'b1)
							cipher_text_data_available <= 1'b0;
						if(is_last_pipe_data_out == 1'b1)
							tag_generation_stage <= tag_generation_stage + 1'b1;
					end
					else begin
						GF_MUL_in_valid <= 1'b0;
					end
				end
				else begin
					GF_MUL_in_valid <= 1'b0;
				end
				
				//Final Tag Data Received
				if(tag_generation_stage == 2'd3) begin
					tag_valid <= 1'b1;
					tag <= temp_multH_data ^ zero_cipher_text;
				end
				
				//Ready Text
				if(ready_text == 1'b1 && zero_cipher_text_valid == 1'b1) begin
					if(done_conversion == 1'b0)
						temp_cipher_text <= curr_cipher_text;
					else begin
						temp_cipher_text <= curr_cipher_text & (one_array << no_of_extra_zeroes);
						is_last_pipe_data_out <= 1'b1;
					end
					inp_fifo_rdreq <= 1'b1;
					output_state_rotation <= 2'd1;
				end
				else if(ready_text == 1'b1 && zero_cipher_text_valid == 1'b0) begin
					// Zeroth Cipher Text Data. Will be used finally.
					zero_cipher_text <= curr_cipher_text;
					zero_cipher_text_valid <= 1'b1;
				end
				//Data Obtained and Calculated in output_state_rotation == 2'd1
				if(zero_cipher_text_valid == 1'b1) begin		// Already 0th data is taken out separately.
					if(output_state_rotation == 2'd1) begin
						output_state_rotation <= 2'd2;
						cipher_text_data_available <= 1'b1;
						inp_fifo_rdreq <= 1'b0;
					end
					// Set wr_req and data in state 2
					else if(output_state_rotation == 2'd2) begin
						outp_fifo_wrreq <= 1'b1;
						outp_fifo_in_data <= cipher_text;
						output_state_rotation <= 2'd3;
					end
					//Set to initial states
					else if(output_state_rotation == 2'd3) begin
						outp_fifo_wrreq <= 1'b0;
						output_state_rotation <= 2'd0;
					end
				end
				
				//mult_result_valid state
				if(mult_result_valid == 1'b1) begin
					temp_multH_data <= out_mult;
				end
			end
			ST_SEND_DATA_OUT : begin	// Data will be made available with out_valid status. 
												// When the ready_to_out signal is set. The FIFO's data will be taken out and out_valid will become zero and next data will populate.
				if(outp_fifo_usedw != 4'd0 || all_output_cipher_text_sent == 1'b0) begin	
					if(out_read_set == 1'b0) begin	// Set Read Req
						outp_fifo_rdreq <= 1'b1;
						out_valid <= 1'b0;
						out_read_set <= 1'b1;
					end
					else begin
						outp_fifo_rdreq <= 1'b0;
						if(ready_to_out == 1'b1) begin
							out_valid <= 1'b0;
							out_read_set <= 1'b0;
							if(outp_fifo_empty) 
								all_output_cipher_text_sent <= 1'b1;
						end
						else begin
							out_valid <= 1'b1;
						end
					end
				end
			end
			ST_SEND_TAG_OUT :  begin
				if(tag_valid == 1'b1 && tag_sent_out == 1'b0) begin
					if(ready_to_out == 1'b1) begin
						out_valid <= 1'b0;
						tag_valid <= 1'b0;
						tag_data_out <= 1'b0;
						tag_sent_out <= 1'b1;	// Set as to make state transition
					end
					else begin
						tag_data_out <= 1'b1;
						out_valid <= 1'b1;
					end
				end
			end
			ST_DONE : begin
				done_signal <= 1'b1;
			end
			default : ;
		endcase
	end
endmodule