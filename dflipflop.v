`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2019 00:09:01
// Design Name: 
// Module Name: dflipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dflipflop(pm,clk,rndout);
input [63:0] pm; // Data input 
input clk; // clock input 
output [63:0] rndout; // output Q 
reg [63:0] t;



always @(posedge clk) 
begin
 t <= pm; 
end 
assign rndout=t;

endmodule


