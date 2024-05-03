module keyExpansion (clk, reset, key, key_valid, out_key, complete_expansion);
	input clk, reset;
	input [0:255] key;
	input key_valid;
	output [0:1919] out_key;
	output reg complete_expansion;
	
	reg [0:7] round_constants [0:9];				
	reg [0:31] word_data [0:59];
	
	genvar i;
	generate 
		for(i=0 ; i<60; i=i+1) begin : out_key_assign
			assign out_key[(32*i) : (32*i) + 31] = word_data [i];
		end
	endgenerate
	
	reg [0:31] in_subword;
	wire [0:31] out_subword;
	reg start_conversion;
	wire s_box_ready;
	
	//Structural Assignment
	subWord dut_subWord (clk, reset, in_subword, out_subword, s_box_ready);
	
	reg [0:5] counter;
	reg [0:3] round_count;
	reg [0:31] temp_word;
	
	// Complicated counter	(Will not always count at every posedge)
	always @(posedge clk) begin
		if(reset == 1'b0) begin
			counter <= 6'd0;
			round_count <= 3'd0;
			start_conversion <= 1'b0;
			complete_expansion <= 1'b0;
			round_constants [0] <= 8'h01;
			round_constants [1] <= 8'h02;
			round_constants [2] <= 8'h04;
			round_constants [3] <= 8'h08;
			round_constants [4] <= 8'h10;
			round_constants [5] <= 8'h20;
			round_constants [6] <= 8'h40;
			round_constants [7] <= 8'h80;
			round_constants [8] <= 8'h1b;
			round_constants [9] <= 8'h36;
		end
		else if(counter < 6'd60 && s_box_ready == 1'b1 && key_valid == 1'b1) begin
			if(counter <= 6'd7) begin
				word_data [counter] <= key [(32 * counter) +:32 ];
				temp_word <= key [(32 * counter) +:32 ];
				counter <= counter + 1'b1;
			end
			else begin
				if(counter [3:5] == 3'b000) begin			// mod-8
					if(start_conversion == 1'b1) begin 		// toggle at one cycle
						// Async Read RAM. Therefore data will be ready now for sure.
						word_data[counter] <= out_subword ^ {round_constants[round_count], {24{1'b0}} } ^ word_data [counter - 8];
						temp_word <= out_subword ^ {round_constants[round_count], {24{1'b0}} } ^ word_data [counter - 8];
						start_conversion <= 1'b0;
						counter <= counter + 1'b1;
						round_count <= round_count + 1'b1;
					end
					else begin
						start_conversion <= 1'b1;
						in_subword [0:23] <= temp_word [8:31];
						in_subword [24:31] <= temp_word [0:7];
					end
				end
				else if (counter [4:5] == 2'b00) begin 	// mod-4
					if(start_conversion == 1'b1) begin		// toggle at one cycle
						word_data[counter] <= out_subword ^ word_data [counter - 8];
						temp_word <= out_subword ^ word_data [counter - 8];
						start_conversion <= 1'b0;
						counter <= counter + 1'b1;
					end
					else begin
						start_conversion <= 1'b1;
						in_subword <= temp_word;
					end
				end
				else begin
					word_data [counter] <= temp_word ^  word_data[counter - 8];
					temp_word <= temp_word ^  word_data[counter - 8];
					counter <= counter + 1'b1;
				end
			end
		end
		else if (counter == 6'd60) begin
			complete_expansion <= 1'b1;
		end
	end
endmodule