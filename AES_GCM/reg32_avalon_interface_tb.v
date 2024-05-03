`timescale 1ns / 1ps

module reg32_avalon_interface_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ns

  // Signals
  reg clock, resetn, write, read, chipselect;
  reg [7:0] address;
  reg [31:0] writedata;
  wire [31:0]readdata,Q_export;
reg [3:0] byteenable;
  // Instantiate the module under test
  reg32_avalon_interface dut(
    .clock(clock),
    .resetn(resetn),
	 .address(address),
    .writedata(writedata),
    .readdata(readdata),
    .write(write),
    .read(read),
    .chipselect(chipselect),
	 .Q_export(Q_export)
  );

  // Clock generation
  always begin
    clock = 0;
    #((CLK_PERIOD)/2);
    clock = 1;
    #((CLK_PERIOD)/2);
  end

//  // Initial reset
//  initial begin
//  end

  // Test sequence
  initial begin
    // Write operation
		resetn = 0;
		#25; // Hold reset for 10 ns
		resetn = 1;
		
		chipselect = 1;
		
		//Cipher Key - 1
		write=1;
		address = 8'h3;
		writedata = 32'hfeffe992;
		#10;
		writedata = 32'h8665731c;
		#10;
		writedata = 32'h6d6a8f94;
		#10;
		writedata = 32'h67308308;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//Cipher Key - 2
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'hfeffe992;
		#10;
		writedata = 32'h8665731c;
		#10;
		writedata = 32'h6d6a8f94;
		#10;
		writedata = 32'h67308308;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//IV Data
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'hcafebabe;
		#10;
		writedata = 32'hfacedbad;
		#10;
		writedata = 32'hdecaf888;
		#10;
		writedata = 32'h00000000;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//Size Word
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'h00000000;
		#10;
		writedata = 32'h000000a0;
		#10;
		writedata = 32'h00000000;
		#10;
		writedata = 32'h000001e0;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//AAD - 0
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'hfeedface;
		#10;
		writedata = 32'hdeadbeef;
		#10;
		writedata = 32'hfeedface;
		#10;
		writedata = 32'hdeadbeef;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//AAD - 1
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'habaddad2;
		#10;
		writedata = 32'h00000000;
		#10;
		writedata = 32'h00000000;
		#10;
		writedata = 32'h00000000;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//Plain Text - 0
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'hd9313225;
		#10;
		writedata = 32'hf88406e5;
		#10;
		writedata = 32'ha55909c5;
		#10;
		writedata = 32'haff5269a;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//Plain Text - 1
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'h86a7a953;
		#10;
		writedata = 32'h1534f7da;
		#10;
		writedata = 32'h2e4c303d;
		#10;
		writedata = 32'h8a318a72;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		//Plain Text - 2
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'h1c3c0c95;
		#10;
		writedata = 32'h95680953;
		#10;
		writedata = 32'h2fcf0e24;
		#10;
		writedata = 32'h49a6b525;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		
		//Plain Text - 3
		#10;
		write = 1;
		address = 8'h3;
		writedata = 32'hb16aedf5;
		#10;
		writedata = 32'haa0de657;
		#10;
		writedata = 32'hba637b39;
		#10;
		writedata = 32'h00000000;
		#10;
		write = 0;
		
		//Issue start command
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h1; 
		#10;
		write = 0;
		
		#100;		//Simple delay to check wait functionality of blocks
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Allowing time to go into invalid state after read. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		/////////////////////////////////////// ALL DATA SENT TO AES BLOCK /////////////////////////////////////////
		
		//Issue get data command -- Cipher Text 0
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h2; 
		#10;
		write = 0;
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Output become valid. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		///////////////////////////////// READ ALL 4 WORDS ///////////////////////////////////////
		
		// Cipher Text - 0
		
		read = 1;	//Read status
		address = 8'h4;
		#2; $display("Cipher Text 0 0 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h5;
		#2; $display("Cipher Text 0 1 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h6;
		#2; $display("Cipher Text 0 2 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h7;
		#2; $display("Cipher Text 0 3 : %h", readdata);	// Output become valid. 
		#10;
		
		//Issue get data command -- Cipher Text 1
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h2; 
		#10;
		write = 0;
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Output become valid. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		// Cipher Text - 1
		
		read = 1;	//Read status
		address = 8'h4;
		#2; $display("Cipher Text 1 0 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h5;
		#2; $display("Cipher Text 1 1 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h6;
		#2; $display("Cipher Text 1 2 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h7;
		#2; $display("Cipher Text 1 3 : %h", readdata);	// Output become valid. 
		#10;
		
		
		//Issue get data command -- Cipher Text 2
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h2; 
		#10;
		write = 0;
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Output become valid. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		// Cipher Text - 2
		
		read = 1;	//Read status
		address = 8'h4;
		#2; $display("Cipher Text 2 0 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h5;
		#2; $display("Cipher Text 2 1 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h6;
		#2; $display("Cipher Text 2 2 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h7;
		#2; $display("Cipher Text 2 3 : %h", readdata);	// Output become valid. 
		#10;
		
		//Issue get data command -- Cipher Text 3
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h2; 
		#10;
		write = 0;
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Output become valid. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		// Cipher Text - 3
		
		read = 1;	//Read status
		address = 8'h4;
		#2; $display("Cipher Text 3 0 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h5;
		#2; $display("Cipher Text 3 1 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h6;
		#2; $display("Cipher Text 3 2 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h7;
		#2; $display("Cipher Text 3 3 : %h", readdata);	// Output become valid. 
		#10;
		
		//Issue get data command -- Tag
		#10;
		write = 1;
		address = 8'h1;
		writedata = 32'h3; 
		#10;
		write = 0;
		
		read = 1;	//Read status
		address = 8'h2;
		#10;
		while(readdata != 8'h1) begin
			read = 0;
			#10;
			read = 1;	//Read the data
			address = 8'h2;
			#10;
		end
		$display("Read Data: %h", readdata);	// Output become valid. 
		read = 0;
		#10;
		
		// Reset the status word -- Explicit -- Done to change FSM State (Can also do it implicitly by next write command.)
		#10;
		write = 1;
		address = 8'h2;
		writedata = 32'h0;
		#10;
		write = 0;
		
		// Tag
		
		read = 1;	//Read status
		address = 8'h4;
		#2; $display("Tag 0 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h5;
		#2; $display("Tag 1 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h6;
		#2; $display("Tag 2 : %h", readdata);	// Output become valid. 
		#10;
		
		read = 1;	//Read status
		address = 8'h7;
		#2; $display("Tag 3 : %h", readdata);	// Output become valid. 
		#10;
		
		/////////////////////////// DONE ////////////////////////////////////////////
		
//		// Display the cipher text - 0
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		#100;
//		
//		read = 1;	//Read the data	-- Assuming the status should become 1 at that cycle.
//		@(posedge readdata[0]);
//		
//		//    // Display the read data -- Status
//		$display("Read Data: %h", readdata); #10;
//		
//		// Display the cipher text - 1
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		#100;
//		
//		read = 1;	//Read the data	-- Assuming the status should become 1 at that cycle.
//		@(posedge readdata[0]);
//		
//		//    // Display the read data -- Status
//		$display("Read Data: %h", readdata); #10;
//		
//		// Display the cipher text - 2
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		#100;
//		
//		read = 1;	//Read the data	-- Assuming the status should become 1 at that cycle.
//		@(posedge readdata[0]);
//		
//		//    // Display the read data -- Status
//		$display("Read Data: %h", readdata); #10;
//		
//		// Display the cipher text - 3
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//
//		#100;
//		
//		read = 1;	//Read the data	-- Assuming the status should become 1 at that cycle.
//		@(posedge readdata[0]);
//		
//		//    // Display the read data -- Status
//		$display("Read Data: %h", readdata); #10;
//		
//		// Display the Tag
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
//		
//		write = 1; #10; write = 0; #10;	//Dummy Write
//		read = 1; $display("Read Data: %h", readdata); #10; read = 0;
  end

endmodule