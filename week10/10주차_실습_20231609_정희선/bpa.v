`timescale 1ns / 1ps

module boolean(
    input Cin,
   
    input [3:0] A,
    input [3:0] B,
    output [4:0] C,
    output [3:0] S
);

    assign C[0] = Cin;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : adder
            assign S[i] = (A[i] ^ B[i]) ^ C[i];
            assign C[i + 1] = (C[i] & (A[i] ^ B[i])) | (A[i] & B[i]);
        end
    endgenerate
endmodule