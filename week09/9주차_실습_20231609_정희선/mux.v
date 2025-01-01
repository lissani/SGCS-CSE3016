`timescale 1ns / 1ps

module boolean(
    input A,
    input B,
    input C,
    input D,
    input a,
    input b,
    output out
    );

assign out = (A&~a&~b) | (B&~a&b) | (C&a&~b) | (D&a&b);

endmodule