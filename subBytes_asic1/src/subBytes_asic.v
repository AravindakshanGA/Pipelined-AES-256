// DONE. 4 cycled approach to avoid more usage of memory.

module subBytes_asic (
`ifdef USE_POWER_PINS
    vccd1,
    vssd1,
`endif
clk, reset, in_data, in_ready, out_data, out_ready, s_box_ready);
	
	`ifdef USE_POWER_PINS
	    inout vccd1;
	    inout vssd1;
	`endif
	
	input clk, reset;
	input [0:127] in_data;
	input in_ready;
	
	output reg [0:127] out_data;
	output s_box_ready;
	output reg out_ready;
	
	reg [0:31] in;		// Input given to S-Box in 4 cycles.
	wire [0:31] out; 

	wire ram_ready;
	wire [0:7] wr_addr;
	wire [0:7] wr_data;
	
	wire wr_enable;
	
	s_box_maker design_s_box_maker (clk, reset, ram_ready, wr_enable, wr_addr, wr_data);
	
	assign s_box_ready = ram_ready;
	
	//wire [0:7] ram_addr[0:3];
/*
	genvar i;
	generate 
		for(i=0 ; i<4; i=i+1) begin : sub_Bytes 
			// assign ram_addr[i] = (ram_ready == 1'b1) ? in[(8*i): (8*i)+7 ] : wr_addr; 
			// subBytes sbox0(clk, reset, wr_enable, ram_addr[i], wr_data, out[(8*i)   :(8*i)+7 ]);
			`ifdef USE_POWER_PINS
			    subbyte2 sbox0(vccd1, vssd1, clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[(8*i): (8*i)+7 ], out[(8*i)   :(8*i)+7 ]);
			`else 
			    subbyte2 sbox0(clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[(8*i): (8*i)+7 ], out[(8*i)   :(8*i)+7 ]);
			`endif
		end
	endgenerate
	*/
	`ifdef USE_POWER_PINS
	    subbyte2 sbox0(vccd1, vssd1, clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[0:7], out[0:7]);
	    subbyte2 sbox1(vccd1, vssd1, clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[8:15], out[8:15]);
	    subbyte2 sbox2(vccd1, vssd1, clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[16:23], out[16:23]);
	    subbyte2 sbox3(vccd1, vssd1, clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[24:31], out[24:31]);
	`else 
	    subbyte2 sbox0(clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[0:7], out[0:7]);
	    subbyte2 sbox1(clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[8:15], out[8:15]);
	    subbyte2 sbox2(clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[16:23], out[16:23]);
	    subbyte2 sbox3(clk, wr_enable, wr_addr, wr_data, clk, ram_ready, in[24:31], out[24:31]);
	`endif
	
	reg [2:0] counter;
	reg start;
	
//	assign start = (in_ready & reset && counter < 3'b101) ? 1'b1 : 1'b0;
	
	always @(posedge clk) begin
		if(reset == 1'b0) begin
			counter <= 3'b000;
			out_ready <= 1'b0;
		end
		else begin
			if (start == 1'b1 && counter <= 3'b100) begin
				case (counter)
					3'b000: begin in <= in_data [0:31]; out_ready <= 1'b0; end
					3'b001: begin in <= in_data [32:63]; out_data [0:31] <= out; end
					3'b010: begin in <= in_data [64:95]; out_data [32:63] <= out; end
					3'b011: begin in <= in_data [96:127]; out_data [64:95] <= out; end
					3'b100: begin out_data [96:127] <= out; out_ready <= 1'b1; end
				endcase
				counter <= counter + 1'b1;
			end
			if(out_ready == 1'b1) begin
				counter <= 3'b000;
				out_ready <= 1'b0;
			end
		end
	end
	
	//Causes a warning. Needs to be checked.
	always @(in_ready, counter, reset) begin
		if(reset == 1'b0) 
			start = 1'b0;
		else begin
			if(in_ready == 1'b1)
				start = 1'b1;
			if(counter == 3'b101)
				start = 1'b0;
		end
	end
	
endmodule
