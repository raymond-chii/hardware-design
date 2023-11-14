`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 06:55:10 PM
// Design Name: 
// Module Name: dffcounter
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


module dffcounter(
    input clock,
    input clear,
    output [7:0] Q
    );
    
    dff m1(clock, clear, ~Q[0], Q[0]);
    dff m2 (~Q[0], clear, ~Q[1], Q[1]);
    dff m3 (~Q[1], clear, ~Q[2], Q[2]);
    dff m4 (~Q[2], clear, ~Q[3], Q[3]);
    dff m5 (~Q[3], clear, ~Q[4], Q[4]);
    dff m6 (~Q[4], clear, ~Q[5], Q[5]);
    dff m7 (~Q[5], clear, ~Q[6], Q[6]);
    dff m8 (~Q[6], clear, ~Q[7], Q[7]); 
    
endmodule
