`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 07:05:02 PM
// Design Name: 
// Module Name: dffcounter_tb
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


module dffcounter_tb();
    reg clock;
    reg clear;
    wire [7:0] Q;
    
    dffcounter dut(.clock(clock), .clear(clear), .Q(Q));
    
    always #1 clock = !clock;
    
    initial begin
        clock = 1; clear = 1;
        #1;
        clear = 0; 
       #500;
    end
endmodule
