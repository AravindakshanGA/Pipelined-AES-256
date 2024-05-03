module shiftRows(clk, reset, in, in_ready, out, out_ready);

	// Column Major Concept -- a0,a1,a2,a3 are in 1 column
	input clk, reset;
	input in_ready;
	input [0:127] in;
	output [0:127] out;
	output reg out_ready;
	
	// Introduced clk, reset to have a track of combinational propagational delay.
	always @(posedge clk) begin
		out_ready <= in_ready;
	end
	
	genvar i, j;
	generate 
		for(i=0 ; i<4; i=i+1) begin : shiftRows_row
			for(j=0 ; j<4; j=j+1) begin : shiftRows_col
				assign out[((i+(4*j))*8) +: 8] = in[((((5*i)+(4*j))%16)*8)+: 8];
			end
		end
	endgenerate
endmodule