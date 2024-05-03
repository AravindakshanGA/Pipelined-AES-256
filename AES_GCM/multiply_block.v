module multiply_block(clk, reset, start, x, h_data,  product, done);
	input clk, reset, start;
	input [0:127] x;
	input [0:127] h_data;
	
	// Let Z=X.Y where X=V and Y=H
	
	output reg [0:127] product;
	output reg done;
	
	reg [0:127] h, v;
	
	reg [0:7] counter;

	always @(posedge clk) begin
		if (reset == 1'b0) begin
			h <= x;
			v <= h_data;
			product <= 128'd0;
			counter <= 8'h00;
			done <= 1'b0;
		end
		else begin
			if(start == 1'b1) begin
				if(counter <= 8'h7F) begin
					if(h[counter] == 1'b1) begin
						product <= product ^ v;
					end
					if(v[127] == 1'b0) begin
						v <= v >> 1;
					end
					else begin
						v <= {{1'b0, v[0:6]} ^ 8'hE1, v[7:126]};
					end
					counter <= counter + 1'b1;
				end
				else begin
					done <= 1'b1;
				end
			end
			else begin
				h <= x;
				v <= h_data;
				product <= 128'd0;
				counter <= 8'h00;
				done <= 1'b0;
			end
		end
	end
endmodule