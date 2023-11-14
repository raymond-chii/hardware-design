`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 03:19:23 AM
// Design Name: 
// Module Name: falladder_tb
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


module falladder_tb;

reg a,b,cin;
wire cout, s;
    falladder DUT (.a(a), .b(a), .cin(cin), .cout(cout), .s(s));
    
initial
begin
    a=0; b=0; cin=0;
        #10 a = 1;
        #10 b = 1; a = 0;
        #10 a = 1; 
        #10 cin = 1; a = 0; b = 0;
        #10 a = 1;
        #10 b = 1; a = 0; 
        #10 a = 1;
        #10;
end

endmodule
