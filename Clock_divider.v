`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 03:44:11 PM
// Design Name: 
// Module Name: Clock_divider
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


module Clock_divider(
    input clock_in,
    output reg clock_out
    );
    reg[1:0] counter=2'd0;
    parameter DIVISOR = 2'd2;
    
    always @(posedge clock_in)
    begin
     counter <= counter + 2'd1;
     if(counter>=(DIVISOR-1))
      counter <= 2'd0;
     clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
    end
    
endmodule
