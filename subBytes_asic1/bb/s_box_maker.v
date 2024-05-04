/// sta-blackbox
module s_box_maker (
clk, reset, ram_ready, wr_enable, wr_addr, wr_data);
	input clk;
	input reset;
	output reg ram_ready;
	output reg wr_enable;
	output [0:7] wr_addr;
	output [0:7] wr_data;
	
	reg [0:7] count;
	reg [0:7] mem_data_in;
	
endmodule
