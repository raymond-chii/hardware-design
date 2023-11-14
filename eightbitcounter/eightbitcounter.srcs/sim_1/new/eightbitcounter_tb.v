`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 06:13:32 PM
// Design Name: 
// Module Name: eightbitcounter_tb
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


module eightbitcounter_tb();


reg clock;
reg enable; 
reg clear_n;
wire [7:0] Q;

    counter dut(.clock(clock),.enable(enable),.clear_n(clear_n),.Q(Q));
always #1 clock = !clock ;
    
    initial
        begin
            clock = 1;enable = 0;clear_n = 0;
            #1;
            clock = 1;enable = 1;clear_n = 1;
            #500;
         end    

endmodule
