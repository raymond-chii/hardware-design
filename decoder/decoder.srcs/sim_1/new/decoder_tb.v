`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 08:16:15 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;


    reg [2:0] s;

    wire [7:0] d;

    integer k;

 

    decoder dut (.s(s),.d(d)

);

 

    initial

    begin

        $dumpfile("waveForm.vcd");

        $dumpvars(1, dut);

    end

 

    initial

    begin

        s = 0;

        for (k = 0; k < 8; k = k + 1)

            #5 s = k;

            #10;

    end

 

endmodule

 