`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 09:22:11 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input logic [31:0] A, 
    input logic [31:0] B, 
    input logic [2:0] alucontrol,
    output logic [31:0] aluout, 
    output logic zero);
    
    
    always_comb
    begin
        case(alucontrol)
          3'b000:aluout <= A & B;
          3'b001:aluout <= A | B;
          3'b010:aluout <= A + B;
          3'b100:aluout <= A & (~B);
          3'b101:aluout <= A | (~B);
          3'b110:aluout <= A - B;
          3'b111:aluout <= (A < B) ? 1:0;
          
         endcase
         zero <= (aluout == 0) ? 1:0;
    end
endmodule

//always @(*)
//begin
//    case (alucontrol)
//        3'b000: aluout = srca & srcb;    // AND
//        3'b001: aluout = srca | srcb;    // OR
//        3'b010: aluout = srca + srcb;    // ADD
//        3'b011: aluout = srca - srcb;    // SUB
//        3'b100: aluout = srca < srcb ? 32'b1 : 32'b0;  // SLT
//        default: aluout = 32'b0;
//    endcase

//    zero = (aluout == 32'b0);
//end

//endmodule
