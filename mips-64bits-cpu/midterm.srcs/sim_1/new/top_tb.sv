`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 09:25:21 PM
// Design Name: 
// Module Name: top_tb
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



module testbench();

    logic clk;
    logic reset; 

    logic [31:0] writedata, dataadr; 
    logic memwrite; 

    top DUT(clk, reset, writedata, dataadr, memwrite);

    initial
        begin
            reset <= 1; #220; reset <= 0; 
        end

    // Generate clock to sequence tests
    always 
        begin
            clk <= 1; #50; clk <= 0; #50;
        end

    // Monitor statement for dataadr
    always @(posedge clk)
        begin
            if (memwrite) begin
                if (dataadr === 84 && writedata === 7) begin
                    $display("Dataadr: %d, Writedata: %d - Simulation succeeded", dataadr, writedata);
                    $stop; 
                end
                else if (dataadr !== 80) begin
                    $display("Dataadr: %d, Writedata: %d - Simulation failed", dataadr, writedata);
                    $stop;
                end
            end
        end

endmodule

