`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 07:15:32 PM
// Design Name: 
// Module Name: coscounter
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


module coscounter (
  input wire clk,       
  input wire clear,     
  output reg [2:0] count  
);
 
  always @(posedge clk or posedge clear) begin
    if (clear) begin
      count <= 3'b000;
    end else begin
      case (count)
        3'b000: count <= 3'b001;
        3'b001: count <= 3'b011;
        3'b011: count <= 3'b101;
        3'b101: count <= 3'b111;
        3'b111: count <= 3'b010;
        3'b010: count <= 3'b000;
        default: count <= 3'b000;
      endcase
    end
  end
 
endmodule
