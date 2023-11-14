`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 07:08:59 PM
// Design Name: 
// Module Name: paralsreg
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


module paralsreg (input wire clock,	
input wire shift_in,							
input wire [3:0] data_in, 
input wire load,
input wire shift_en,
output wire shift_out,									
output wire [3:0] reg_cont);

    reg [3:0] shift_reg;

    always @(posedge clock)
        if(load)
            shift_reg <= data_in;
        else if (shift_en)
            shift_reg <= {shift_reg[2:0], shift_in};
            
            
            
    assign shift_out = shift_reg[3];
    
    assign reg_cont = shift_reg; 


endmodule
						

