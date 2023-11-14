`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 08:59:50 PM
// Design Name: 
// Module Name: leftshift
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


module sl2(
    input logic [31:0] a, 
    output logic [31:0] y
);

assign y = {a[29:0], 2'b00}; //left shifting by 2 meaning multiplying by 4

endmodule
