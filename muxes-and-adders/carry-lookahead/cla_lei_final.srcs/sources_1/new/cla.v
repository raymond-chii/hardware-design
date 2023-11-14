`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 04:06:38 AM
// Design Name: 
// Module Name: cla
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


module cla(
    input wire [3:0] a,
    input wire [3:0] b, 
    input wire cin,
    output wire cout, 
    output wire [3:0] s
    );
 wire [3:0] p, g;
 wire [2:0] w;
 
assign w[0] = g[0] | (p[0] & cin);
assign w[1] = g[1] | (p[1] & w[0]);
assign w[2] = g[2] | (p[2] & w[1]);
assign cout = g[3] | (p[3] & w[2]);

fulladder #(.N(4)) fa0(.a(a[0]), .b(b[0]), .cin(cin), .cout(), .s(s[0]), .p(p[0]), .g(g[0]));
fulladder #(.N(4)) fa1(.a(a[1]), .b(b[1]), .cin(w[0]), .cout(), .s(s[1]), .p(p[1]), .g(g[1]));
fulladder #(.N(4)) fa2(.a(a[2]), .b(b[2]), .cin(w[1]), .cout(), .s(s[2]), .p(p[2]), .g(g[2]));
fulladder #(.N(4)) fa3(.a(a[3]), .b(b[3]), .cin(w[2]), .cout(), .s(s[3]), .p(p[3]), .g(g[3]));


    
endmodule
