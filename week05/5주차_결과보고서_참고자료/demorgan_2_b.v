`timescale 1ns / 1ps

module boolean(
    input a,
    input b,
    output c
    );
assign c = (~a) || (~b);
endmodule
