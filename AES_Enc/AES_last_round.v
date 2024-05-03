module AES_last_round (clk, reset, in_data, in_ready, round_key, out_data, out_ready, s_box_ready);
	input clk, reset;
	input [0:127] in_data;
	input in_ready;
	input [0:127] round_key;
	
	output [0:127] out_data;
	output out_ready;
	output s_box_ready;
	
	//Structural Assignments
	/*
		subBytes, shiftRows, AddRoundKey
	*/
	
	wire [0:127] out_sb;
	wire [0:127] out_sr;
	wire out_ready_sb, out_ready_sr;

	subBytes dut_a (clk, reset, in_data, in_ready, out_sb, out_ready_sb, s_box_ready);		//5 cycles
	shiftRows dut_b (clk, reset, out_sb, out_ready_sb, out_sr, out_ready_sr);					//1 cycles			// Combinational (Have 1 cycle delay to calculate output)
	addRoundKey dut_d (clk, reset, out_sr, out_ready_sr, round_key, out_data, out_ready);	//1 cycles

endmodule