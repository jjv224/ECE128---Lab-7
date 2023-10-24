`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:50:50 PM
// Design Name: 
// Module Name: ttf
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

module ttf(
     input clk,input rst, input T, output reg Q);  
  
        always @ (posedge clk or rst) begin  
         if (rst)
         Q <= 1'b0; 
        else if (T)  
            Q <= ~Q;  
        else  
            Q <= Q;  
  end  
endmodule  


/*module ttf(
     input clk,input T, output reg Q);  
  
        always @ (posedge clk) begin  
    
        if (T)  
            Q <= ~Q;  
        else  
            Q <= Q;  
  end  
endmodule  */


module Counters( sysclk,rst,Q1,Q2,Q3);
   input sysclk,rst;
   output Q1;
   output Q2;
   output Q3;
   wire tt2;
   wire tt3;
   
ttf num_1(.clk(sysclk), .rst(rst),.T(1'b1),.Q(Q1));
    assign tt2 = Q1;
    ttf num_2(.clk(sysclk),.rst(rst),.T(tt2),.Q(Q2));
    assign tt3 = Q1 & (Q2);
    ttf num_3(.clk(sysclk),.rst(rst),.T(tt3),.Q(Q3));   

    /*ttf num_1(.clk(sysclk),.T(1'b1),.Q(Q1));
    assign tt2 = ~Q1;
    ttf num_2(.clk(Q1),.T(tt2),.Q(Q2));
    assign tt3 = Q1 & (~Q2);
    ttf num_3(.clk(Q2),.T(1'b1),.Q(Q3));   */
 endmodule


