module s_box_asic (clk, chipselect, rd_enable, wr_enable, address, wr_data, rd_data);
	
	//Async Read - Sync Write RAM
	
	input clk, chipselect, rd_enable, wr_enable;
	input [0:7] address, wr_data;
	
	output wire [0:7] rd_data;
	
	reg [0:7] memblock [0:255] ;
	
	always @(posedge clk) begin
		if (wr_enable) memblock[address] <= wr_data;
	end
	assign rd_data = memblock[address];
endmodule