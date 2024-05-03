`timescale 1ns / 1ps

module AES_Decipher_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ns

  // Signals
  reg clock;
  reg reset;
  reg [0:255] cipher_key;
  reg [0:127] plain_text [0:3];
  reg [0:127] current_plain_text;

  reg key_valid;
  reg aes_initial_calc;
  reg start_conversion;
  reg last_conversion;
  
  wire [0:127] cipher_text;
  wire ready_text;
  wire pipe_ready;
  wire done_conversion;
  
  reg [0:127] h_value;
  
  AES_Decipher dut0 (clock, reset, current_plain_text, cipher_key, key_valid, start_conversion, last_conversion, cipher_text, ready_text, pipe_ready, done_conversion);
      
  // Clock generation
  always #10 clock = ~clock;
	// Reset generation
	 initial begin
		clock = 0;
		cipher_key = 256'h603DEB10_15CA71BE_2B73AEF0_857D7781_1F352C07_3B6108D7_2D9810A3_0914DFF4;
//		plain_text[0] = 128'h6BC1BEE2_2E409F96_E93D7E11_7393172A;
//		plain_text[1] = 128'hAE2D8A57_1E03AC9C_9EB76FAC_45AF8E51;
//		plain_text[2] = 128'h30C81C46_A35CE411_E5FBC119_1A0A52EF;
//		plain_text[3] = 128'hF69F2445_DF4F9B17_AD2B417B_E66C3710;
		plain_text[0] = 128'hF3EED1BD_B5D2A03C_064B5A7E_3DB181F8;
		plain_text[1] = 128'h591CCB10_D410ED26_DC5BA74A_31362870;
		plain_text[2] = 128'hB6ED21B9_9CA6F4F9_F153E7B1_BEAFED1D;
		plain_text[3] = 128'h23304B7A_39F9F3FF_067D8D8F_9E24ECC7;
		key_valid = 1'b1;
		reset = 0;
		aes_initial_calc = 1'bZ;
		#55;
		reset = 1;
	 end
	 
//	 always @(pipe_ready) begin
//		#20;
//		aes_initial_calc = 1'b0;
//		current_plain_text = 128'h0;
//		start_conversion = 1'b1;
//		last_conversion = 1'b1;
//		#20;
//		start_conversion = 1'b0;
//	 end
	 
	 //Pipelining Test
	 always @(pipe_ready) begin
		if(pipe_ready == 1'b1) begin
			#40;
//			aes_initial_calc = 1'b1;
//			h_value = cipher_text;
//			last_conversion = 1'b0;
//			#40;		//Wait 2 clocks
			current_plain_text = plain_text [0];
			start_conversion = 1'b1;
			#20;		// 1 Cycle
			start_conversion = 1'b0;
			#140;		// 7 Cycle
			current_plain_text = plain_text [1];
			start_conversion = 1'b1;
			#20;		// 1 Cycle
			start_conversion = 1'b0;
			#140;		// 7 Cycle
			current_plain_text = plain_text [2];
			start_conversion = 1'b1;
			#20;		// 1 Cycle
			start_conversion = 1'b0;
			#140;		// 7 Cycle
			current_plain_text = plain_text [3];
			last_conversion = 1'b1;
			start_conversion = 1'b1;
			#20;		// 1 Cycle
			start_conversion = 1'b0;
			#140;		// 7 Cycle
		end
	 end
	 
	 initial begin
		   #1000000;
		$finish;
	end
endmodule