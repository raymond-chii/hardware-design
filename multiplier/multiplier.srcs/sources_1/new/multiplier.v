`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 02:06:59 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier (

    input [1:0] A,

    input [1:0] B,

    output reg [3:0] result

);

    reg [3:0] ROM [0:15];

 

initial begin

    $readmemb("rom.mem", ROM, 0, 15);

end

reg [3:0] addr;

always @(*) 
    begin

        addr = (A << 2)|B;
        result = ROM[addr];

    end

 

endmodule