`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 07:21:54 PM
// Design Name: 
// Module Name: sdff
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


module sdff( 
input D,						
input clk,
input sync_reset, output reg Q);
						
always @(posedge clk) begin
						
    if (sync_reset==1'b1) 
        Q <= 1'b0;
						
    else
        Q <= D;

end
 
endmodule


