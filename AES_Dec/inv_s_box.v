module inv_s_box (clk, reset, rd_enable, wr_enable, rd_addr, wr_addr, wr_data, mem_data);
	
	//Async Read - Sync Write RAM
	
	input clk, reset, rd_enable, wr_enable;
	input [0:7] rd_addr, wr_data, wr_addr;
	
	output wire [0:7] mem_data;
	
	reg [0:7] memblock [0:255] ;
	
	always @(posedge clk) begin
		if (wr_enable) memblock[wr_addr] <= wr_data;
	end
	assign mem_data = memblock[rd_addr];
endmodule