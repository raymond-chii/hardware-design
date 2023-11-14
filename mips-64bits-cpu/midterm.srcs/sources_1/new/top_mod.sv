`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 09:18:34 PM
// Design Name: 
// Module Name: top_mod
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


module top(
    input logic clk, reset,
    output logic [31:0] writedata, dataadr,
    output logic memwrite);


    logic [31:0] pc, instr, readdata; 

    mips m(clk, reset, pc, instr, memwrite, dataadr, writedata, readdata);
    imem i(pc[7:2], instr);
    dmem d(clk, memwrite, dataadr, writedata, readdata);

endmodule