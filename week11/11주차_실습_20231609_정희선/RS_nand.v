`timescale 1ns / 1ps

module boolean(
    input Clk, R, S,
    output Q,
    output _Q
);

    wire out1;
    wire out2;

    assign out1 = ~(R&Clk);
    assign out2 = ~(S&Clk);
    assign Q = ~(out2&_Q);
    assign _Q = ~(out1&Q);

endmodule