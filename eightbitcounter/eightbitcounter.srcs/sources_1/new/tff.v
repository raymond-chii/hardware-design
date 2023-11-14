`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 08:27:44 PM
// Design Name: 
// Module Name: tff
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


module tff(clear_n,enable,clk,t,q,notq);
    input t,clk,enable,clear_n;
    output reg q;
    output notq;
    assign notq=~q;

    always@(posedge clk,negedge clear_n)
        begin
            if(!clear_n)
                q<=0;
            else
                begin
                    if(enable)
                        begin
                            if(t)
                                q<=~q;
                            else
                                q<=1;
                        end
                    else
                        q<=q;
                end
        end
endmodule