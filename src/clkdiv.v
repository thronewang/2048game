module clkdiv(rst,clk,clk_game,clk_rand,clk_vga);

	reg [15:0] counter;
	output wire clk_game,clk_rand,clk_vga;
	input wire clk,rst;

	assign clk_game = counter[10];
	assign clk_rand = counter[15];
	assign clk_vga = counter[1];

	always @(posedge rst or posedge clk) begin
		if(rst) counter <= 0;
		else counter <= counter + 1;
	end

endmodule