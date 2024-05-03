module AES_Enc_Nios_Core (CLOCK_50, KEY, to_HEX);
	input CLOCK_50;
	input [0:0] KEY;
//	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
//	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7
//	output clk_out;
//	output resetn;
	output wire [31:0] to_HEX;
	wire dut_clk;
	
//	wire resetn;
//	wire clk_out;
	
	aes_sys_core_designer U0 (.clk_clk(dut_clk), .reset_reset_n(KEY[0]), .to_hex_readdata(to_HEX) );
	
//	convert_hex h0(to_HEX[3:0], HEX0);
//	convert_hex h1(to_HEX[7:4], HEX1);
//	convert_hex h2(to_HEX[11:8], HEX2);
//	convert_hex h3(to_HEX[15:12], HEX3);
//	convert_hex h4(to_HEX[19:16], HEX4);
//	convert_hex h5(to_HEX[23:20], HEX5);
//	convert_hex h6(to_HEX[27:24], HEX6);
//	convert_hex h7(to_HEX[31:28], HEX7);
	
	localparam log2_slowdown_factor=23;		// Slowing to see the cipher text
	reg[log2_slowdown_factor-1:0] k_bit_counter =0;
	assign dut_clk= k_bit_counter [log2_slowdown_factor-1];

	always @(posedge CLOCK_50) begin 
		k_bit_counter=k_bit_counter+1;
	end
	
//	assign clk_out = dut_clk;
//	assign resetn = ~KEY;
endmodule