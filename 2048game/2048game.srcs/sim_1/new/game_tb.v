`timescale 1ns / 1ps
module game_tb;
//input
reg rst, clk;
reg [3:0] key;

//output
wire Hsync,Vsync;
wire [3:0] vgaRed,vgaGreen,vgaBlue;

game uut(rst,clk,key,Hsync,Vsync,vgaRed,vgaGreen,vgaBlue);

initial begin
    rst = 0;
    clk = 0;
    key = 4'b0000;
end

parameter period = 20;

always begin 
    #(period/2) clk <= ~clk;
end

always begin
   #period key = 4'b0001;
   #period key = 4'b1000;
   #period key = 4'b0100;
   #period key = 4'b0010;
end

endmodule
