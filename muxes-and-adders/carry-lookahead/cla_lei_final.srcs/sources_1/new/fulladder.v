`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 04:00:31 AM
// Design Name: 
// Module Name: fulladder
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


module fulladder #(parameter N=4)(
    a, b, cin, cout, s, p, g
    );
    
   input a,b,cin;
   output cout, s, p,g;
   
   assign #7 s = a ^ b ^ cin;
   assign #7 cout = (a & b)|(a & cin)|(b & cin);
   assign p = a | b;
   assign g = a & b;
endmodule
