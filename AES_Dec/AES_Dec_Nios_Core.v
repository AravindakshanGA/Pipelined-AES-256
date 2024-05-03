module AES_Dec_Nios_Core (CLOCK_50, KEY, control_signals, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	input CLOCK_50;
	input [0:0] KEY;
	output wire [31:0] control_signals;
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
		
	wire [63:0] to_HEX;
	
	aes_dec_core U0 (.clk_clk(CLOCK_50), .reset_reset_n(KEY[0]), .q_export_readdata(to_HEX) );

	convert_hex h0(to_HEX[35:32], HEX0);
	convert_hex h1(to_HEX[39:36], HEX1);
	convert_hex h2(to_HEX[43:40], HEX2);
	convert_hex h3(to_HEX[47:44], HEX3);
	convert_hex h4(to_HEX[51:48], HEX4);
	convert_hex h5(to_HEX[55:52], HEX5);
	convert_hex h6(to_HEX[59:56], HEX6);
	convert_hex h7(to_HEX[63:60], HEX7);
	
	assign control_signals = to_HEX [31:0];
	
endmodule