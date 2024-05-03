`timescale 1ns / 1ps

module AES_Pipe_Enc_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ns

  // Signals
  reg clock;
  reg reset, start;
  reg [0:255] cipher_key;
  reg [0:127] plain_text [0:3];
  
  reg [0:127] AAD [0:1];
  
  reg [0:95] IV;
  
  reg [0:127] in_data;
  reg in_valid;
  
  wire ready_for_inp;

  reg key_reset;		// Used to reset the entire state when the key is changed.
  
  wire [0:127] out_data;
  wire out_valid;

  wire [0:127] tag;
  wire tag_valid;
  
  reg ready_to_out;
  
  AES_Pipe_Enc dut0 (clock, reset, start, in_data, in_valid, ready_for_inp, out_data, out_valid, ready_to_out);
      
		
	//Test Case 16
	
	
  // Clock generation
  always #10 clock = ~clock;
  
	// Reset generation
	 initial begin
		clock = 0;
//		cipher_key = 256'h603DEB10_15CA71BE_2B73AEF0_857D7781_1F352C07_3B6108D7_2D9810A3_0914DFF4;
		cipher_key = 256'hfeffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308;
		plain_text[0] = 128'hd9313225f88406e5a55909c5aff5269a;
		plain_text[1] = 128'h86a7a9531534f7da2e4c303d8a318a72;
		plain_text[2] = 128'h1c3c0c95956809532fcf0e2449a6b525;
		plain_text[3] = 128'hb16aedf5aa0de657ba637b3900000000;
//		AAD[0]		  = 128'hfeedfacedeadbeeffeedfacedeadbeef;
//		AAD[1]		  = 128'habaddad2000000000000000000000000;
//		IV				  = 96'hcafebabefacedbaddecaf888;
		ready_to_out  = 1'b0;
		in_valid = 1'b0;
		reset = 0;
		start = 1'b0;
		#55;
		reset = 1;
		#20
		in_data = cipher_key[0:127]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_data = cipher_key[128:255]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
//		in_data = {IV, 32'd0}; in_valid = 1'b0;
//		@(posedge ready_for_inp); #10; in_valid = 1'b1;
//		#20;
//		in_data = 128'h00000000000000a000000000000001e0; in_valid = 1'b0;
//		@(posedge ready_for_inp); #10; in_valid = 1'b1;
//		#20;
//		in_data = AAD[0]; in_valid = 1'b0;
//		@(posedge ready_for_inp); #10; in_valid = 1'b1;
//		#20;
//		in_data = AAD[1]; in_valid = 1'b0;
//		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_data = plain_text[0]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_data = plain_text[1]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_data = plain_text[2]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_data = plain_text[3]; in_valid = 1'b0;
		@(posedge ready_for_inp); #10; in_valid = 1'b1;
		#20;
		in_valid = 1'b0; start = 1'b1;
		
		//Output Obtaining -- When out_valid becomes high, it sends ready to out signal in negedge and wait for 1 clock
		@(posedge out_valid) #10;  ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	// Wait for one clock cycle
		@(posedge out_valid) #10;	ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	
		@(posedge out_valid) #10;  ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	
		@(posedge out_valid) #10;	ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	
		@(posedge out_valid) #10;  ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	
		@(posedge out_valid) #10;  ready_to_out = 1'b1; #20; ready_to_out = 1'b0;	//Extra given
	 end
	 
	 
	 initial begin
		   #100000000;
		$finish;
	end
endmodule