`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 03:30:02 AM
// Design Name: 
// Module Name: rca
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


module rca(
    input [3:0] a,
    input [3:0] b, 
    input cin,
    output cout, 
    output [3:0] s
    );
    
   wire w0, w1, w2;

falladder #(.N(4)) fa0(.a(a[0]), .b(b[0]), .cin(cin),.cout(w0), .s(s[0]));
falladder #(.N(4)) fa1(.a(a[1]), .b(b[1]), .cin(w0), .cout(w1),.s(s[1]));
falladder #(.N(4)) fa2(.a(a[2]), .b(b[2]), .cin(w1), .cout(w2), .s(s[2]));
falladder #(.N(4)) fa3(.a(a[3]), .b(b[3]), .cin(w2), .cout(cout), .s(s[3]));
endmodule
