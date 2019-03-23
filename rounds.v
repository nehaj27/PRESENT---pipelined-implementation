`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2019 00:01:12
// Design Name: 
// Module Name: rounds
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


module rounds (clk,rc,data,rndout,keyin,keyout);

input clk;
input [3:0]rc;
input [63:0]data;
output [63:0]rndout;
input [79:0]keyin;
output [79:0]keyout;


wire [63:0] pm,res,sb;
wire [3 : 0] sbox [0 : 15];

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
          
      wire [7 : 0] perm [63 : 0];
      assign perm[8'h00] = 8'h00;
      assign perm[8'h01] = 8'h10;
      assign perm[8'h02] = 8'h20;
      assign perm[8'h03] = 8'h30;
      assign perm[8'h04] = 8'h01;
      assign perm[8'h05] = 8'h11;
      assign perm[8'h06] = 8'h21;
      assign perm[8'h07] = 8'h31;
      assign perm[8'h08] = 8'h02;
      assign perm[8'h09] = 8'h12;
      assign perm[8'h0a] = 8'h22;
      assign perm[8'h0b] = 8'h32;
      assign perm[8'h0c] = 8'h03;
      assign perm[8'h0d] = 8'h13;
      assign perm[8'h0e] = 8'h23;
      assign perm[8'h0f] = 8'h33;
      assign perm[8'h10] = 8'h04;
      assign perm[8'h11] = 8'h14;
      assign perm[8'h12] = 8'h24;
      assign perm[8'h13] = 8'h34;
      assign perm[8'h14] = 8'h05;
      assign perm[8'h15] = 8'h15;
      assign perm[8'h16] = 8'h25;
      assign perm[8'h17] = 8'h35;
      assign perm[8'h18] = 8'h06;
      assign perm[8'h19] = 8'h16;
      assign perm[8'h1a] = 8'h26;
      assign perm[8'h1b] = 8'h36;
      assign perm[8'h1c] = 8'h07;
      assign perm[8'h1d] = 8'h17;
      assign perm[8'h1e] = 8'h27;
      assign perm[8'h1f] = 8'h37;
      assign perm[8'h20] = 8'h08;
      assign perm[8'h21] = 8'h18;
      assign perm[8'h22] = 8'h28;
      assign perm[8'h23] = 8'h38;
      assign perm[8'h24] = 8'h09;
      assign perm[8'h25] = 8'h19;
      assign perm[8'h26] = 8'h29;
      assign perm[8'h27] = 8'h39;
      assign perm[8'h28] = 8'h0a;
      assign perm[8'h29] = 8'h1a;
      assign perm[8'h2a] = 8'h2a;
      assign perm[8'h2b] = 8'h3a;
      assign perm[8'h2c] = 8'h0b;
      assign perm[8'h2d] = 8'h1b;
      assign perm[8'h2e] = 8'h2b;
      assign perm[8'h2f] = 8'h3b;
      assign perm[8'h30] = 8'h0c;
      assign perm[8'h31] = 8'h1c;
      assign perm[8'h32] = 8'h2c;
      assign perm[8'h33] = 8'h3c;
      assign perm[8'h34] = 8'h0d;
      assign perm[8'h35] = 8'h1d;
      assign perm[8'h36] = 8'h2d;
      assign perm[8'h37] = 8'h3d;
      assign perm[8'h38] = 8'h0e;
      assign perm[8'h39] = 8'h1e;
      assign perm[8'h3a] = 8'h2e;
      assign perm[8'h3b] = 8'h3e;
      assign perm[8'h3c] = 8'h0f;
      assign perm[8'h3d] = 8'h1f;
      assign perm[8'h3e] = 8'h2f;
      assign perm[8'h3f] = 8'h3f;
         
          
function [63:0] subbyte(input[63:0] data);
               reg [3 : 0] w0, w1, w2, w3,w4, w5, w6, w7,w8, w9, wa, wb,wc, wd, we, wf; 
               begin
                   w0 = sbox[data[63 : 60]];
                   w1 = sbox[data[59: 56]];
                   w2 = sbox[data[55 : 52]];
                   w3 = sbox[data[51 : 48]];
                   w4 = sbox[data[47 : 44]];
                   w5 = sbox[data[43 : 40]];
                   w6 = sbox[data[39 : 36]];
                   w7 = sbox[data[35 :32]];
                   w8 = sbox[data[31 : 28]];
                   w9 = sbox[data[27 : 24]];
                   wa = sbox[data[23 : 20]];
                   wb = sbox[data[19 : 16]];
                   wc = sbox[data[15 : 12]];
                   wd = sbox[data[11 : 8]];
                   we = sbox[data[7 : 4]];
                   wf = sbox[data[3 : 0]];                   
                  
                   subbyte={ w0, w1, w2, w3,w4, w5, w6, w7,w8, w9, wa, wb,wc, wd, we, wf};
                end
           endfunction 
   
   
   function [63 : 0] PERM(input [63 : 0] data);
        reg [63:0]  data1;
       begin
                                 data1[perm[8'h00]]=data[8'h00];
                                 data1[perm[8'h01]]=data[8'h01];
                                 data1[perm[8'h02]]=data[8'h02];
                                 data1[perm[8'h03]]=data[8'h03];
                                 data1[perm[8'h04]]=data[8'h04];
                                 data1[perm[8'h05]]=data[8'h05];
                                 data1[perm[8'h06]]=data[8'h06];
                                 data1[perm[8'h07]]=data[8'h07];
                                 data1[perm[8'h08]]=data[8'h08];
                                 data1[perm[8'h09]]=data[8'h09];
                                 data1[perm[8'h0a]]=data[8'h0a];
                                 data1[perm[8'h0b]]=data[8'h0b];
                                 data1[perm[8'h0c]]=data[8'h0c];
                                 data1[perm[8'h0d]]=data[8'h0d];
                                 data1[perm[8'h0e]]=data[8'h0e];
                                 data1[perm[8'h0f]]=data[8'h0f];
                                 
                                 data1[perm[8'h10]]=data[8'h10];
                                 data1[perm[8'h11]]=data[8'h11];
                                 data1[perm[8'h12]]=data[8'h12];
                                 data1[perm[8'h13]]=data[8'h13];
                                 data1[perm[8'h14]]=data[8'h14];
                                 data1[perm[8'h15]]=data[8'h15];
                                 data1[perm[8'h16]]=data[8'h16];
                                 data1[perm[8'h17]]=data[8'h17];
                                 data1[perm[8'h18]]=data[8'h18];
                                 data1[perm[8'h19]]=data[8'h19];
                                 data1[perm[8'h1a]]=data[8'h1a];
                                 data1[perm[8'h1b]]=data[8'h1b];
                                 data1[perm[8'h1c]]=data[8'h1c];
                                 data1[perm[8'h1d]]=data[8'h1d];
                                 data1[perm[8'h1e]]=data[8'h1e];
                                 data1[perm[8'h1f]]=data[8'h1f];
                                 
                                 data1[perm[8'h20]]=data[8'h20];
                                 data1[perm[8'h21]]=data[8'h21];
                                 data1[perm[8'h22]]=data[8'h22];
                                 data1[perm[8'h23]]=data[8'h23];
                                 data1[perm[8'h24]]=data[8'h24];
                                 data1[perm[8'h25]]=data[8'h25];
                                 data1[perm[8'h26]]=data[8'h26];
                                 data1[perm[8'h27]]=data[8'h27];
                                 data1[perm[8'h28]]=data[8'h28];
                                 data1[perm[8'h29]]=data[8'h29];
                                 data1[perm[8'h2a]]=data[8'h2a];
                                 data1[perm[8'h2b]]=data[8'h2b];
                                 data1[perm[8'h2c]]=data[8'h2c];
                                 data1[perm[8'h2d]]=data[8'h2d];
                                 data1[perm[8'h2e]]=data[8'h2e];
                                 data1[perm[8'h2f]]=data[8'h2f];
                                 
                                 data1[perm[8'h30]]=data[8'h30];
                                 data1[perm[8'h31]]=data[8'h31];
                                 data1[perm[8'h32]]=data[8'h32];
                                 data1[perm[8'h33]]=data[8'h33];
                                 data1[perm[8'h34]]=data[8'h34];
                                 data1[perm[8'h35]]=data[8'h35];
                                 data1[perm[8'h36]]=data[8'h36];
                                 data1[perm[8'h37]]=data[8'h37];
                                 data1[perm[8'h38]]=data[8'h38];
                                 data1[perm[8'h39]]=data[8'h39];
                                 data1[perm[8'h3a]]=data[8'h3a];
                                 data1[perm[8'h3b]]=data[8'h3b];
                                 data1[perm[8'h3c]]=data[8'h3c];
                                 data1[perm[8'h3d]]=data[8'h3d];
                                 data1[perm[8'h3e]]=data[8'h3e];
                                 data1[perm[8'h3f]]=data[8'h3f];
                                
                                            
                                PERM={data1};
                end
         endfunction
       
KeyGeneration t0(rc,keyin,keyout);

addround t1(data,keyout,res);

assign sb=subbyte(res);

assign pm=PERM(sb);

dflipflop t2(pm,clk,rndout);

endmodule
