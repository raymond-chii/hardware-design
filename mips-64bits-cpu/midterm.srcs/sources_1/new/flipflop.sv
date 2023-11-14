`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 05:33:31 PM
// Design Name: 
// Module Name: flipflop
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


module flopr #(parameter N = 8)
    (input logic clk,reset,
     input logic [N-1:0] d,
     output logic [N-1:0] q);

always_ff@(posedge clk, posedge reset)
    if(reset) q <= 0;
    else q <= d; 
endmodule