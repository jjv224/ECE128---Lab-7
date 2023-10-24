`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:56:40 PM
// Design Name: 
// Module Name: ttf_3b_tb
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


module ttf_3b_tb();
    reg sysclk, rst;
    wire q1, q2, q3;
    
    Counters dut(.sysclk(sysclk), .rst(rst), .Q1(q1),.Q2(q2),.Q3(q3));
    
    initial begin
       sysclk = 0;
        forever #10 sysclk = ~sysclk;
        end
       initial begin
       rst = 1;
      #10 rst = 0;
       
       #200;
    end

endmodule
