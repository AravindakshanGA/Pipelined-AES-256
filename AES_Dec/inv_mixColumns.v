module inv_mixColumns (clk, reset, in_data, in_ready, out_data, out_ready);
	
	input clk, reset;
	input [0:127] in_data;
	input in_ready;
	
	output [0:127] out_data;
	output reg out_ready;
	
	// Combinational Implementation	
	/* 
	[c0] = [E B D 9] [c0]
	[c1] = |9 E B D| |c1|
	[c2] = |D 9 E B| |c2|
	[c3] = [B D 9 E] [c3]
	*/
	
	// Although the given block is combinational, will have 1 cycle wait time to maintain pipeline setup.
	always @(posedge clk) begin
		out_ready <= in_ready;
	end
	
	// Multiply by 2 is done as intended by algorithm
	
	function [0:7] mul2 (input [0:7] byte_in);
		begin 
			/* If LSB is 1, LShift by 1 and xor with 8'h1b. else do only LShift*/
			if(byte_in[0] == 1) mul2 = ((byte_in << 1) ^ 8'h1b);
			else mul2 = byte_in << 1; 
		end 	
	endfunction

	function [0:7] mulE (input [0:7] byte_in);
//		reg [0:7] byte_inA = 0; 
//		reg [0:7] byte_inB = 0;
//		reg [0:7] byte_inC = 0;
		begin
//			byte_inA = mul2(byte_in);
//			byte_inB = mul2(byte_inA);
//			byte_inC = mul2(byte_inB);
			mulE = mul2(mul2(mul2(byte_in))) ^ mul2(mul2(byte_in)) ^ mul2(byte_in);		// 8 + 4 + 2
//			mulE[0] = byte_in[5] ^ byte_in[6] ^ byte_in[7];
//			mulE[1] = byte_in[0] ^ byte_in[5];	
//			mulE[2] = byte_in[0] ^ byte_in[1] ^ byte_in[6];
//			mulE[3] = byte_in[0] ^ byte_in[1] ^ byte_in[2] ^ byte_in[5] ^ byte_in[6];	
//			mulE[4] = byte_in[1] ^ byte_in[2] ^ byte_in[3] ^ byte_in[5];
//			mulE[5] = byte_in[2] ^ byte_in[3] ^ byte_in[4] ^ byte_in[6];	
//			mulE[6] = byte_in[3] ^ byte_in[4] ^ byte_in[5] ^ byte_in[7];	
//			mulE[7] = byte_in[4] ^ byte_in[5] ^ byte_in[6];	
			
		end
	endfunction
	
	function [0:7] mulD (input [0:7] byte_in);
//		reg [0:7] byte_inA = 0; 
//		reg [0:7] byte_inB = 0;
//		reg [0:7] byte_inC = 0;
		begin
//			byte_inA = mul2(byte_in);
//			byte_inB = mul2(byte_inA);
//			byte_inC = mul2(byte_inB);
			mulD = mul2(mul2(mul2(byte_in))) ^ mul2(mul2(byte_in)) ^ byte_in;	// 8 + 4 + 1
//			mulD[0] = byte_in[0] ^ byte_in[5] ^ byte_in[6];
//			mulD[1] = byte_in[1] ^ byte_in[5] ^ byte_in[7];	
//			mulD[2] = byte_in[0] ^ byte_in[2] ^ byte_in[6];
//			mulD[3] = byte_in[0] ^ byte_in[1] ^ byte_in[3] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];	
//			mulD[4] = byte_in[1] ^ byte_in[2] ^ byte_in[4] ^ byte_in[5] ^ byte_in[7];
//			mulD[5] = byte_in[2] ^ byte_in[3] ^ byte_in[5] ^ byte_in[6];	
//			mulD[6] = byte_in[3] ^ byte_in[4] ^ byte_in[6] ^ byte_in[7];	
//			mulD[7] = byte_in[4] ^ byte_in[5] ^ byte_in[7];	
		end
	endfunction
	
	function [0:7] mulB (input [0:7] byte_in);
//		reg [0:7] byte_inA = 0; 
//		reg [0:7] byte_inB = 0;
//		reg [0:7] byte_inC = 0;
		begin
//			byte_inA = mul2(byte_in);
//			byte_inB = mul2(byte_inA);
//			byte_inC = mul2(byte_inB);
			mulB = mul2(mul2(mul2(byte_in))) ^ mul2(byte_in) ^ byte_in;	// 8 + 2 + 1
//			mulB[0] = byte_in[0] ^ byte_in[5] ^ byte_in[7];
//			mulB[1] = byte_in[0] ^ byte_in[1] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];	
//			mulB[2] = byte_in[1] ^ byte_in[2] ^ byte_in[6] ^ byte_in[7];
//			mulB[3] = byte_in[0] ^ byte_in[2] ^ byte_in[3] ^ byte_in[5];	
//			mulB[4] = byte_in[1] ^ byte_in[3] ^ byte_in[4] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];
//			mulB[5] = byte_in[2] ^ byte_in[4] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];	
//			mulB[6] = byte_in[3] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];	
//			mulB[7] = byte_in[4] ^ byte_in[6] ^ byte_in[7];
		end
	endfunction
	
	function [0:7] mul9 (input [0:7] byte_in);
//		reg [0:7] byte_inA = 0; 
//		reg [0:7] byte_inB = 0;
//		reg [0:7] byte_inC = 0;
		begin
//			byte_inA = mul2(byte_in);
//			byte_inB = mul2(byte_inA);
//			byte_inC = mul2(byte_inB);
			mul9 = mul2(mul2(mul2(byte_in))) ^ byte_in;	// 8 + 1
//			mul9[0] = byte_in[0] ^ byte_in[5];
//			mul9[1] = byte_in[1] ^ byte_in[5] ^ byte_in[6];	
//			mul9[2] = byte_in[2] ^ byte_in[6] ^ byte_in[7];
//			mul9[3] = byte_in[0] ^ byte_in[3] ^ byte_in[5] ^ byte_in[7];
//			mul9[4] = byte_in[1] ^ byte_in[4] ^ byte_in[5] ^ byte_in[6];
//			mul9[5] = byte_in[2] ^ byte_in[5] ^ byte_in[6] ^ byte_in[7];
//			mul9[6] = byte_in[3] ^ byte_in[6] ^ byte_in[7];	
//			mul9[7] = byte_in[4] ^ byte_in[7];
		end
	endfunction

	genvar i;
	generate 
		for(i=0;i<16;i=i+4) begin : m_col	// 1 entire column
			assign out_data[((i  )*8):((i  )*8)+7] = mulE(in_data[((i  )*8):((i  )*8)+7]) ^ mulB(in_data[((i+1)*8):((i+1)*8)+7]) ^ mulD(in_data[((i+2)*8):((i+2)*8)+7]) ^ mul9(in_data[((i+3)*8):((i+3)*8)+7]);
			assign out_data[((i+1)*8):((i+1)*8)+7] = mul9(in_data[((i  )*8):((i  )*8)+7]) ^ mulE(in_data[((i+1)*8):((i+1)*8)+7]) ^ mulB(in_data[((i+2)*8):((i+2)*8)+7]) ^ mulD(in_data[((i+3)*8):((i+3)*8)+7]);
			assign out_data[((i+2)*8):((i+2)*8)+7] = mulD(in_data[((i  )*8):((i  )*8)+7]) ^ mul9(in_data[((i+1)*8):((i+1)*8)+7]) ^ mulE(in_data[((i+2)*8):((i+2)*8)+7]) ^ mulB(in_data[((i+3)*8):((i+3)*8)+7]);
			assign out_data[((i+3)*8):((i+3)*8)+7] = mulB(in_data[((i  )*8):((i  )*8)+7]) ^ mulD(in_data[((i+1)*8):((i+1)*8)+7]) ^ mul9(in_data[((i+2)*8):((i+2)*8)+7]) ^ mulE(in_data[((i+3)*8):((i+3)*8)+7]);
		end
	endgenerate
	
endmodule