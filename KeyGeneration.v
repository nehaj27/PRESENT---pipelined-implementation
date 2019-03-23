`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2019 15:08:35
// Design Name: 
// Module Name: KeyGeneration
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


module KeyGeneration(rc,keyin,keyout);
    
    input [7:0] rc;
   input [80:0]keyin;
   output [80:0] keyout;
   wire [79:0] k;
   wire [79:0] s;
   wire[3:0] per;
   
   wire [3 : 0] sbox [15 : 0];

          assign sbox[4'h0] = 4'hc;
          assign sbox[4'h1] = 4'h5;
          assign sbox[4'h2] = 4'h6;
          assign sbox[4'h3] = 4'hb;
          assign sbox[4'h4] = 4'h9;
          assign sbox[4'h5] = 4'h0;
          assign sbox[4'h6] = 4'ha;
          assign sbox[4'h7] = 4'hd;
          assign sbox[4'h8] = 4'h3;
          assign sbox[4'h9] = 4'he;
          assign sbox[4'ha] = 4'hf;
          assign sbox[4'hb] = 4'h8;
          assign sbox[4'hc] = 4'h4;
          assign sbox[4'hd] = 4'h7;
          assign sbox[4'he] = 4'h1;
          assign sbox[4'hf] = 4'h2;
          
 
   assign k= keyin[18:0] + keyin[79:19];
   assign s=sbox[k[79:76]] + k[75:0];
   assign per= rc^ s[19:15];
   assign keyout=s[79:20] + per + s[14:0];
   
   


endmodule
