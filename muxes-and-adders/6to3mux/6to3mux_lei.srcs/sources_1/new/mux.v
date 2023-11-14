`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 10:35:03 PM
// Design Name: 
// Module Name: mux
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
module mux1 (a, b,select1, out1);
    input a,b,select1;
    output out1;
    wire w1,w2,w3; 
    and (w2, w1, a);
    and (w3, b, select1);
    not (w1, select1);
    or (out1, w2, w3); 
endmodule

module mux2 (c, d,select2, out2);
    input c,d,select2;
    output out2;
    reg out2;
    always @ (select2, c,d)
    begin 
    if(select2 == 0)
    begin
    out2 = c;
    end
    else
    begin
    out2 = d; 
    end
    end 
endmodule

module mux3 (e, f,select3, out3);
    input e,f,select3;
    output out3;
    reg out3;
    always @ (select3, e,f)
    begin 
    if(select3 == 0)
    begin
    out3 = e;
    end
    else
    begin
    out3 = f; 
    end
    end 
endmodule

module mux(a1, b1, c1, d1, e1, f1, out_1, out_2, out_3, select);
    input a1, b1, c1, d1,e1, f1, select;
    output out_1, out_2, out_3;  
    
    mux1 muxa(.a(a1), .b(b1), .select1(select), .out1(out_1));
    mux2 muxb(.c(c1), .d(d1), .select2(select), .out2(out_2));
    mux3 muxc(.e(e1), .f(f1), .select3(select), .out3(out_3));
   
    
endmodule
