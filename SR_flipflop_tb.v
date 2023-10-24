`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:03:45 PM
// Design Name: 
// Module Name: SR_flipflop_tb
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


module SR_flipflop_tb();
    reg S, R, Clk;
    wire Q, QBar;
    
    SR_flipflop dut(.Q(Q), .QBar(QBar), .S(S), .R(R), .Clk(Clk));
    
    initial begin
       Clk = 0;
       forever #10 Clk = ~Clk;
    end
   
   initial begin
   S = 1; R = 0;
   #100; S = 0; R = 1;
   #100; S = 0; R = 0;
   #100; S = 1; R = 1;
   end
endmodule
