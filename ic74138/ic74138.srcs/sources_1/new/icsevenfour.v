`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 08:53:23 PM
// Design Name: 
// Module Name: icsevenfour
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


module icsevenfour(
    input [2:0] x,
    input [2:0] g,
    output [7:0] y
    );
    
    wire [7:0] b;
    
    decoder dd (.s(x),.d(b));
    
    
    assign y[0] = (!g[0])|g[1]|g[2]|(!b[0]);
    assign y[1] = (!g[0])|g[1]|g[2]|(!b[1]);
    assign y[2] = (!g[0])|g[1]|g[2]|(!b[2]);
    assign y[3] = (!g[0])|g[1]|g[2]|(!b[3]);
    assign y[4] = (!g[0])|g[1]|g[2]|(!b[4]);
    assign y[5] = (!g[0])|g[1]|g[2]|(!b[5]);
    assign y[6] = (!g[0])|g[1]|g[2]|(!b[6]);
    assign y[7] = (!g[0])|g[1]|g[2]|(!b[7]);
    
endmodule
