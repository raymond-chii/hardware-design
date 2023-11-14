`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 08:20:45 PM
// Design Name: 
// Module Name: counter
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

module counter(
    input clock,clear_n, enable,
    output reg [7:0] Q);
    
    
    always @(posedge clock)
       if (!clear_n)
        begin
            Q <= 8'b0;
        end
       else if (enable)
        begin
            Q[0] =(enable) ? ~Q[0]:Q[0]; 
            Q[1] =(enable & Q[0]) ? ~Q[1]:Q[1];
            Q[2] =(enable & Q[0] & Q[1]) ? ~Q[2]:Q[2];
            Q[3] =(enable & Q[0] & Q[1] & Q[2]) ? ~Q[3]:Q[3];
            Q[4] =(enable & Q[0] & Q[1] & Q[2] & Q[3]) ? ~Q[4]:Q[4];
            Q[5] =(enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4]) ? ~Q[5]:Q[5];
            Q[6] =(enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5]) ? ~Q[6]:Q[6];
            Q[7] =(enable & Q[0] & Q[1] & Q[2] & Q[3] & Q[4] & Q[5] & Q[6]) ? ~Q[7]:Q[7];
           
        end
endmodule

