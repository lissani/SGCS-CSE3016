`timescale 1ns / 1ps

module 1bit(
    input a,
    input b,
    output equal,
    output not_equal,
    output left_big,
    output right_big
    );
assign equal = ~(a^b);
assign not_equal = a^b;
assign left_big = a&&(~b);
assign right_big = (~a)&&b;
endmodule
