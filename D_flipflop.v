`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:25:17 PM
// Design Name: 
// Module Name: D_flipflop
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

//Synch
module D_flipflop(
    input d,
    input rstn,
    input clk,
    output reg q
    );
    
    always @ (posedge clk)
        if (!rstn)
            q <= 0;
        else
            q <= d;
    
endmodule

module D_asynch(
    input d,
    input rstn,
    input clk,
    output reg q
    );
    
    always @ (posedge clk or negedge rstn)
        if (!rstn)
            q <= 0;
        else
            q <= d;
endmodule
