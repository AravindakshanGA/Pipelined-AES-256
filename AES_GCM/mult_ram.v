module mult_ram (clk, reset, rd_enable, wr_enable, rd_addr, wr_addr, wr_data, mem_data);
	
	input clk, reset, rd_enable, wr_enable;
	input [0:3] rd_addr, wr_addr;
	input [0:127] wr_data;
	
	output reg [0:127] mem_data;
	
	reg [0:127] memblock [0:15];
	
	always @(posedge clk) begin
		if (wr_enable) memblock[wr_addr] <= wr_data;
		else if (rd_enable) mem_data <= memblock[rd_addr];
	end
endmodule