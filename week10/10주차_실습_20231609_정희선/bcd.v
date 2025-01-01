`timescale 1ns / 1ps

module boolean(
    input Cin,
   
    input [3:0] A,
    input [3:0] B,
    output Cout,
    output [3:0] Sum
);
    
    wire k;
    wire [3:0] z, S;
    
    padd rca0(A, B, Cin, z, k);
    assign Cout = (z[3]&z[2])|(z[3]&z[1])|k;
    assign S = {1'b0, Cout, Cout, 1'b0};
    padd rca1(z, S, 0, Sum);   

endmodule