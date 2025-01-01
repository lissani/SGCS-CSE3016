`timescale 1ns / 1ps

module boolean(
    input bin,
   
    input [3:0] A,
    input [3:0] B,
    output [4:0] b,
    output [3:0] D
);

    assign b[0] = bin;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : substractor
        assign D[i] = (A[i] ^ ~B[i]) ^ b[i];
        assign b[i + 1] = (b[i] & (A[i] ^ ~B[i])) | (~A[i] & ~B[i]);
        end
    endgenerate
endmodule