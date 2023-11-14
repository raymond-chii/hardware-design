`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 03:21:31 PM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb;

 

    reg [1:0] A;

    reg [1:0] B;

    wire [3:0] result;

 

    multiplier dut (.A(A), .B(B), .result(result));

 

    initial

    begin

        $dumpfile("waveForm.vcd");

        $dumpvars(1, dut);

       

        

        A = 0;

        B = 0;

       

        

        #20 A = 0; B = 0;

        #20 A = 0; B = 1;

        #20 A = 0; B = 2;

        #20 A = 0; B = 3;

        #20 A = 1; B = 0;

        #20 A = 2; B = 0;

        #20 A = 3; B = 0;

        #20 A = 1; B = 1;

        #20 A = 0; B = 0;

       

        

        $finish;

    end

 

endmodule
