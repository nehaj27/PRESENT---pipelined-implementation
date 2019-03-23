`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2019 00:03:07
// Design Name: 
// Module Name: addround
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


module addround(data,keyout,res);
input [63:0] data;
input [79:0] keyout;
output [63:0] res;
    
    assign res = data ^ keyout[63:0];
endmodule
