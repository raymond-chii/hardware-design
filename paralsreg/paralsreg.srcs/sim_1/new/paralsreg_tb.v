`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 05:48:20 PM
// Design Name: 
// Module Name: paralsreg_tb
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


module paralsreg_tb();

    //inputs 
    reg clock;
    reg shift_in;
    reg [3:0] data_in;
   
    reg load;
    reg shift_en; 
    //outputs
    wire shift_out;
    wire [3:0] reg_cont;
    //iterate
    integer i;
    
    paralsreg dut(.clock(clock), .shift_in(shift_in),.shift_en(shift_en), .load(load), .data_in(data_in),.shift_out(shift_out), .reg_cont(reg_cont));
    
    always #1 clock = !clock ;
    
    initial
        begin
            clock = 0;
            shift_en = 0;
            load = 1;
            data_in = 0;
            shift_in = 0;
            for (i = 0; i < 16; i = i + 1)
                #5 data_in = i;
            #10;
            clock = 0;
            shift_en = 1;
            load = 0;
            data_in = 0;
            shift_in = 1;
            for (i = 0; i < 16; i = i + 1)
            begin
                #5 data_in = i;
                #5 data_in = !shift_in;
            end
            #10;
            clock = 0;
            shift_en = 0;
            load = 1;
            data_in = 0;
            shift_in = 1;
            for (i = 0; i < 16; i = i + 1)
                #5 data_in = i;
            #10;
         end    

endmodule
