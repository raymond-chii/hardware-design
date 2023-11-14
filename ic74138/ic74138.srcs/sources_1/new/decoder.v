`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 09:56:51 PM
// Design Name: 
// Module Name: decoder
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

module decoder(

    input wire [2:0] s,

    output wire [7:0] d

);

assign d[0] = (!s[0]) & (!s[1]) & (!s[2]);

assign d[1] = (!s[0]) & (!s[1]) & s[2];

assign d[2] = (!s[0]) & s[1] & (!s[2]);

assign d[3] = (!s[0]) & s[1] & s[2];

assign d[4] = s[0] & (!s[1]) & (!s[2]);

assign d[5] = s[0] & (!s[1]) & s[2];

assign d[6] = s[0] & s[1] & (!s[2]);

assign d[7] = s[0] & s[1] & s[2];

 
endmodule
