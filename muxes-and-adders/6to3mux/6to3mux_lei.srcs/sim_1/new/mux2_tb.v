`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 02:38:07 PM
// Design Name: 
// Module Name: mux2_tb
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


module mux2_tb;

reg a, b, c, d,e,f ,select;
wire [2:0] out;

mux DUT (.a1(a), .b1(b), .c1(c), .d1(d), .e1(e), .f1(f), .out_1(out[0]), .out_2(out[1]), .out_3(out[2]), .select(select));

initial 
    begin 
    a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; select = 0;
    #10 a = 0; c = 0; e = 1; 
    #10 b = 0; d = 0; f = 1;
    #10 a = 0; c = 1; e = 1; b = 0; d = 0; f = 0;
    #10 a = 0; c = 1; e = 0; b = 0; d = 1; f = 1;
    #10 select = 1; 
    #10 a = 0; c = 0; e = 1; 
    #10 b = 0; d = 0; f = 1;
    #10 a = 0; c = 1; e = 1; b = 0; d = 0; f = 0;
    #10 a = 0; c = 1; e = 0;b = 0; d = 1; f = 1;
        #20;
    end 
    

endmodule
