module mixColumns (clk, reset, in_data, in_ready, out_data, out_ready);
	
	input clk, reset;
	input [0:127] in_data;
	input in_ready;
	
	output [0:127] out_data;
	output reg out_ready;
	
	// Combinational Implementation	
	/* 
	[c0] = [2 3 1 1] [c0]
	[c1] = |1 2 3 1| |c1|
	[c2] = |1 1 2 3| |c2|
	[c3] = [3 1 1 2] [c3]
	*/
	
	// Although the given block is combinational, will have 1 cycle wait time to maintain pipeline setup.
	always @(posedge clk) begin
		out_ready <= in_ready;
	end
	
	// Only multiply by 2 and 3 needed.
	// Multiply by 2 is done as intended by algorithm
	// Multiply by 3 is multiply by 2 and xor which xor is done in second cycle. (Will change when pipeline comes)
	
	function [0:7] mul2 (input [0:7] byte_in);
		begin 
				/* If LSB is 1, LShift by 1 and xor with 8'h1b. else do only LShift*/
				if(byte_in[0] == 1) mul2 = ((byte_in << 1) ^ 8'h1b);
				else mul2 = byte_in << 1; 
		end 	
	endfunction

	function [0:7] mul3 (input [0:7] byte_in); //multiply by 3
		begin 	
				mul3 = mul2(byte_in) ^ byte_in;
		end 
	endfunction

	genvar i;
	generate 
		for(i=0;i<16;i=i+4) begin : m_col	// 1 entire column
			assign out_data[((i  )*8):((i  )*8)+7] = mul2(in_data[((i  )*8):((i  )*8)+7]) ^ mul3(in_data[((i+1)*8):((i+1)*8)+7]) ^ in_data[((i+2)*8):((i+2)*8)+7]       ^ in_data[((i+3)*8):((i+3)*8)+7];
			assign out_data[((i+1)*8):((i+1)*8)+7] = in_data[((i  )*8):((i  )*8)+7]       ^ mul2(in_data[((i+1)*8):((i+1)*8)+7]) ^ mul3(in_data[((i+2)*8):((i+2)*8)+7]) ^ in_data[((i+3)*8):((i+3)*8)+7];
			assign out_data[((i+2)*8):((i+2)*8)+7] = in_data[((i  )*8):((i  )*8)+7]       ^ in_data[((i+1)*8):((i+1)*8)+7]       ^ mul2(in_data[((i+2)*8):((i+2)*8)+7]) ^ mul3(in_data[((i+3)*8):((i+3)*8)+7]);
			assign out_data[((i+3)*8):((i+3)*8)+7] = mul3(in_data[((i  )*8):((i  )*8)+7]) ^ in_data[((i+1)*8):((i+1)*8)+7]       ^ in_data[((i+2)*8):((i+2)*8)+7]       ^ mul2(in_data[((i+3)*8):((i+3)*8)+7]);
		end
	endgenerate
	
endmodule