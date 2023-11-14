`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 10:02:53 PM
// Design Name: 
// Module Name: icsevenfour_tb
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


module icsevenfour_tb();

    reg [2:0] x; 
    reg [2:0] g;
    wire [7:0] y;
    integer k; 
    
    icsevenfour DUT(.x(x), .g(g), .y(y));
    
    initial
        begin
            x = 0; g[0] = 0; g[1] = 1; g[2] = 1;
                for (k=0;k<8;k=k+1)
                        #5 x=k;
                #10;
                
            x = 0; g[0] = 1; g[1] = 0; g[2] = 1;
                for (k=0;k<8;k=k+1)
                        #5 x=k;
                #10;
                
            x = 0; g[0] = 1; g[1] = 0; g[2] = 0;
                for (k=0;k<8;k=k+1)
                        #5 x=k;
                #10;    
                
                
                
    end
endmodule
