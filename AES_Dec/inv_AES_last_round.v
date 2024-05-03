module inv_AES_last_round (clk, reset, in_data, in_ready, round_key, out_data, out_ready, s_box_ready);
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
	wire [0:127] out_ark;
	wire out_ready_sb, out_ready_ark;

	addRoundKey dut_d (clk, reset, in_data, in_ready, round_key, out_ark, out_ready_ark);				//1 cycles
	inv_subBytes dut_a (clk, reset, out_ark, out_ready_ark, out_sb, out_ready_sb, s_box_ready);		//5 cycles
	inv_shiftRows dut_b (clk, reset, out_sb, out_ready_sb, out_data, out_ready);							//1 cycles			// Combinational (Have 1 cycle delay to calculate output)
	

endmodule