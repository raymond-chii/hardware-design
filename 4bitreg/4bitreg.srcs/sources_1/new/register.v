`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 05:47:36 PM
// Design Name: 
// Module Name: register
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


module register(
  input clk,reset,load,
  input [3:0] data_in,
  output reg [3:0] data_out);
  
  always@(posedge clk)
    begin
      if(reset)
        data_out<=0;
      else if(load)
        data_out<=data_in;
    end
    
endmodule
