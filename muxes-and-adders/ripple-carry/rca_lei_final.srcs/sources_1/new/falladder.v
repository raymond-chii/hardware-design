`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 03:18:09 AM
// Design Name: 
// Module Name: falladder
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


module falladder #(parameter N=4)
(
a, b, cin, cout, s
    );
    
    input a,b,cin;
    output s,cout;

assign #7 s = a ^ b ^ cin;
assign #7 cout = (a & b)|(a & cin)|(b & cin);


endmodule
