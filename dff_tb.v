`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:27:10 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
    reg clk;
    reg d;
    reg rstn;
    wire q;
    
    D_asynch dff0(.d(d), .rstn(rstn), .clk(clk), .q(q)); //Can be used for asynch or synch flip flop
    
    //Generate Clock
    always #10 clk = ~clk;
    
    initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;
        
        #15 d <= 1;
        #10 rstn <= 1;
        
        #10 rstn <= 0;
        #15 d <= 0;
        
    end
endmodule
