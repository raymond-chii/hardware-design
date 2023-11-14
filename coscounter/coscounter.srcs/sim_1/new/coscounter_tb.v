`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 07:22:35 PM
// Design Name: 
// Module Name: coscounter_tb
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


module coscounter_tb();

    reg clk; 
    reg clear;
    wire [2:0] count;
    
    coscounter dut(.clk(clk), .clear(clear), .count(count));
    
    always #10 clk = !clk;
    initial begin
        clk = 1; clear =1;
        #5;
        clear = 0; 
        #200;
        end
endmodule
