`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 06:55:40 PM
// Design Name: 
// Module Name: dff
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


module dff(
    input wire clock,
    input wire reset,
    input wire d,
    output reg q
    );
    
    always @(posedge clock or posedge reset) begin
    if (reset) begin
        q<=1'b0;
    end else begin
        q<=d; 
    end
    end
endmodule
