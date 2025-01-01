`timescale 1ns / 1ps

module boolean(
    input a3,
    input a2,
    input a1,
    input a0,
    output b3,
    output b2,
    output b1,
    output b0
    );
assign b3 = (a3&~a1) | (a2&a0) | (a2&a1);
assign b2 = (a2&~a0) | (a3&~a1) | (a2&a1);
assign b1 = (a3&~a1) | (a2&~a1&a0) | (~a2&a1);
assign b0 = a0;

endmodule
