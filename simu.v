`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2019 00:10:00
// Design Name: 
// Module Name: simu
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

module simu(

    );
    
    
        reg [63:0] plaintext;
    reg clk;
    reg [79:0] key;
    wire [63:0] ciphertext;
    presentcipher u1(plaintext,clk,key,ciphertext);
      
      initial 
       begin
            clk=0;
          plaintext=63'haabbccddaabbccdd;
          key=79'haabbccddaabbccddccdd;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;#5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          #5
          clk=0;
          #5
          clk=1;
          
         #5
          clk=0;
          #5
          clk=1;
          
          
       end
       
       endmodule