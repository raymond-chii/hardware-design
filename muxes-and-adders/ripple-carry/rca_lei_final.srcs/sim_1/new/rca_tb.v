`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 03:46:39 PM
// Design Name: 
// Module Name: rca_tb
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


module rca_tb;
    reg [3:0] a;
    reg [3:0] b; 
    reg cin;
    wire cout;
    wire [3:0] s;   
    
    rca DUT (.a(a) , .b(b), .cin(cin), .cout(cout), .s(s));
    
initial
begin
        a=0; b=0; cin=0;
        #10 a = 5; b = 5;
        #10 a = 4; b = 3;
        #10 a = 6; b = 2;
        #10 cin = 1; a = 0; b = 0;
        #10 a = 1; b = 9;
        #10;
end

endmodule
