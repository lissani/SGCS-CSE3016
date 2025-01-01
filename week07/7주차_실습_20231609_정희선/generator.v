`timescale 1ns / 1ps

module boolean(
    input a,
    input b,
    input c,
    input d,
    output p
    );
assign p = a^b^c^d;

endmodule
