`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:55:20 PM
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(
    input S,
    input R,
    input Clk,
    output Q, QBar
    );
    wire a1, a2;
    and #1 A1(a1, R, Clk);
    and #1 A2(a2, S, Clk);
    nor #1 N1(Q, a1, QBar);
    nor #1 N2(QBar, a2, Q);  
endmodule
