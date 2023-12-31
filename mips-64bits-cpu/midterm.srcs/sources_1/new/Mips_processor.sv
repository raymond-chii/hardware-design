`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 09:06:59 PM
// Design Name: 
// Module Name: Mips_processor
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


module mips (
    input logic clk, reset,
    output logic [31:0] pc, 
    input logic [31:0] instr,
    output logic memwrite,
    output logic [31:0] aluout, writedata,
    input logic [31:0] readdata
);

logic memtoreg, alusrc, regdst,regwrite, jump, pcsrc, zero; 
logic [2:0] alucontrol;

controller c (instr[31:26], instr[5:0], zero, 
                memtoreg, memwrite, pcsrc,
                alusrc, regdst, regwrite, jump,
                alucontrol);

datapath dp (clk, reset, memtoreg, pcsrc, 
            alusrc, regdst, regwrite, jump,
            alucontrol,
            zero, pc, instr,
            aluout, writedata, readdata);
    
endmodule