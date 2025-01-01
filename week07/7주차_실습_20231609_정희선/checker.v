`timescale 1ns / 1ps

module boolean(
    input a,
    input b,
    input c,
    input d,
    input p,
    output e
    );
assign e = a^b^c^d^p;

endmodule