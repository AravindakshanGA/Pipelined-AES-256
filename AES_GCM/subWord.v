module subWord (clk, reset, in_data, out_data, s_box_ready);
	
	input clk, reset;
	input [0:31] in_data;
	
	output wire [0:31] out_data;
	output s_box_ready;

	wire ram_ready;
	wire [0:7] wr_addr;
	wire [0:7] wr_data;
	
	wire wr_enable;
	
	s_box_maker design_s_box_maker (clk, reset, ram_ready, wr_enable, wr_addr, wr_data);
	
	assign s_box_ready = ram_ready;

	genvar i;
	generate 
		for(i=0 ; i<4; i=i+1) begin : sub_Bytes 
			s_box sbox0(clk, reset, ram_ready, wr_enable, in_data[(8*i): (8*i)+7 ], wr_addr, wr_data, out_data[(8*i)   :(8*i)+7 ]);
		end
	endgenerate

endmodule