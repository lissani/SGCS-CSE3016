`timescale 1ns / 1ps

module boolean4(
    input a,
    input b,
    input c,
    output d
    );
assign d = ~((a||b)&&c);
endmodule
