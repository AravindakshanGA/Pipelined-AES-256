module addRoundKey (clk, reset, in_data, in_ready, round_key, out_data, out_ready);
	input clk, reset;
	input [0:127] in_data;
	input in_ready;
	input [0:127] round_key;
	
	output reg [0:127] out_data;
	output reg out_ready;
	
	always @(posedge clk) begin
		if(reset == 1'b0) begin
			out_ready <= 1'b0;
		end
		else begin
			if(in_ready == 1'b1) begin
				out_data <= in_data ^ round_key;
				out_ready <= 1'b1;
			end
			else 
				out_ready <= 1'b0;	// Out Ready will be valid only for 1 cycle.
		end
	end
endmodule