`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 08:30:48 PM
// Design Name: 
// Module Name: counter_tb
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


module test();
    reg clear_n,enable,clk;
    wire [7:0] q;

counter_8_bit c1(clk,enable,clear_n,q);

    initial
        begin
            clk=0;clear_n=1;enable=1;
            #2 clear_n=0;
            #4 clear_n=1;
            #100 enable=0;
            #40 $finish;
        end
    
    initial
        forever
        #2 clk=~clk;

    initial
        begin
            $dumpfile("dump.vcd");
            $dumpvars(1);
        end
endmodule
