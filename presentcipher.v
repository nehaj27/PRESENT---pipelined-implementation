`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2019 23:58:07
// Design Name: 
// Module Name: presentcipher
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

module presentcipher(plaintext,clk,key,ciphertext);


    input  [63:0] plaintext;
    input   clk;
    input [79:0] key;
    output  [63:0] ciphertext;
        

    
      
    wire [63:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out,r10_out,r11_out,r12_out,r13_out,r14_out,r15_out,r16_out,r17_out,r18_out,r19_out,r20_out,r21_out,r22_out,r23_out,r24_out,r25_out,r26_out,r27_out,r28_out,r29_out,r30_out,r31_out,r32_out;
    
    wire [79:0] k1 ;
    wire [79:0] k2 ;
    wire [79:0] k3 ;
    wire [79:0] k4 ;
    wire [79:0] k5 ;
    wire [79:0] k6 ;
    wire [79:0] k7 ;
    wire [79:0] k8 ;
    wire [79:0] k9 ;
    wire [79:0] k10 ;
    wire [79:0] k11 ;
    wire [79:0] k12 ;
    wire [79:0] k13 ;
    wire [79:0] k14 ;
    wire [79:0] k15 ;
    wire [79:0] k16 ;
    wire [79:0] k17 ;
    wire [79:0] k18;
    wire [79:0] k19 ;
    wire [79:0] k20 ;
    wire [79:0] k21 ;
    wire [79:0] k22 ;
    wire [79:0] k23 ;
    wire [79:0] k24 ;
    wire [79:0] k25 ;
    wire [79:0] k26 ;
    wire [79:0] k27 ;
    wire [79:0] k28 ;
    wire [79:0] k29 ;
    wire [79:0] k30 ;
    wire [79:0] k31 ;
    wire [79:0] k32 ;  
         // ,.keyin(key),.keyout(keyout1)
    rounds r1(.clk(clk),.rc(8'h01),.data(plaintext),.rndout(r1_out),.keyin(key),.keyout(k1));
    rounds r2(.clk(clk) ,.rc(8'h02),.data(r1_out),.rndout(r2_out),.keyin(k1),.keyout(k2));
    rounds r3(.clk(clk) ,.rc(8'h03),.data(r2_out),.rndout(r3_out),.keyin(k2),.keyout(k3));
    rounds r4(.clk(clk) ,.rc(8'h04),.data(r3_out),.rndout(r4_out),.keyin(k3),.keyout(k4));
    rounds r5(.clk(clk) ,.rc(8'h05),.data(r4_out),.rndout(r5_out),.keyin(k4),.keyout(k5));
    rounds r6(.clk(clk) ,.rc(8'h06),.data(r5_out),.rndout(r6_out),.keyin(k5),.keyout(k6));
    rounds r7(.clk(clk) ,.rc(8'h07),.data(r6_out),.rndout(r7_out),.keyin(k6),.keyout(k7));
    rounds r8(.clk(clk) ,.rc(8'h08),.data(r7_out),.rndout(r8_out),.keyin(k7),.keyout(k8));
    rounds r9(.clk(clk) ,.rc(8'h09),.data(r8_out),.rndout(r9_out),.keyin(k8),.keyout(k9));
    rounds r10(.clk(clk) ,.rc(8'h0a),.data(r9_out),.rndout(r10_out),.keyin(k9),.keyout(k10));
    rounds r11(.clk(clk) ,.rc(8'h0b),.data(r10_out),.rndout(r11_out),.keyin(k10),.keyout(k11));
    rounds r12(.clk(clk) ,.rc(8'h0c),.data(r11_out),.rndout(r12_out),.keyin(k11),.keyout(k12));
    rounds r13(.clk(clk) ,.rc(8'h0d),.data(r12_out),.rndout(r13_out),.keyin(k12),.keyout(k13));
    rounds r14(.clk(clk) ,.rc(8'h0e),.data(r13_out),.rndout(r14_out),.keyin(k13),.keyout(k14));
    rounds r15(.clk(clk) ,.rc(8'h0f),.data(r14_out),.rndout(r15_out),.keyin(k14),.keyout(k15));
    rounds r16(.clk(clk) ,.rc(8'h10),.data(r15_out),.rndout(r16_out),.keyin(k15),.keyout(k16));
    rounds r17(.clk(clk) ,.rc(8'h11),.data(r16_out),.rndout(r17_out),.keyin(k16),.keyout(k17));
    rounds r18(.clk(clk) ,.rc(8'h12),.data(r17_out),.rndout(r18_out),.keyin(k17),.keyout(k18));
    rounds r19(.clk(clk) ,.rc(8'h13),.data(r18_out),.rndout(r19_out),.keyin(k18),.keyout(k19));
    rounds r20(.clk(clk) ,.rc(8'h14),.data(r19_out),.rndout(r20_out),.keyin(k19),.keyout(k20));
    rounds r21(.clk(clk) ,.rc(8'h15),.data(r20_out),.rndout(r21_out),.keyin(k20),.keyout(k21));
    rounds r22(.clk(clk) ,.rc(8'h16),.data(r21_out),.rndout(r22_out),.keyin(k21),.keyout(k22));
    rounds r23(.clk(clk) ,.rc(8'h17),.data(r22_out),.rndout(r23_out),.keyin(k22),.keyout(k23));
    rounds r24(.clk(clk) ,.rc(8'h18),.data(r23_out),.rndout(r24_out),.keyin(k23),.keyout(k24));
    rounds r25(.clk(clk) ,.rc(8'h19),.data(r24_out),.rndout(r25_out),.keyin(k24),.keyout(k25));
    rounds r26(.clk(clk) ,.rc(8'h1a),.data(r25_out),.rndout(r26_out),.keyin(k25),.keyout(k26));
    rounds r27(.clk(clk) ,.rc(8'h1b),.data(r26_out),.rndout(r27_out),.keyin(k26),.keyout(k27));
    rounds r28(.clk(clk) ,.rc(8'h1c),.data(r27_out),.rndout(r28_out),.keyin(k27),.keyout(k28));
    rounds r29(.clk(clk) ,.rc(8'h1d),.data(r28_out),.rndout(r29_out),.keyin(k28),.keyout(k29));
    rounds r30(.clk(clk) ,.rc(8'h1e),.data(r29_out),.rndout(r30_out),.keyin(k29),.keyout(k30));
    rounds r31(.clk(clk) ,.rc(8'h1f),.data(r30_out),.rndout(r31_out),.keyin(k30),.keyout(k31));
    assign ciphertext=r2_out^k31;    
    
endmodule
