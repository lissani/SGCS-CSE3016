`timescale 1ns / 1ps

module boolean(
    input Clk, R, S,
    output Q,
    output _Q
);

    wire out1;
    wire out2;

    assign out1 = ~(R | ~Clk);  // Clk와 R의 입력 조합
    assign out2 = ~(S | ~Clk);  // Clk와 S의 입력 조합
    assign Q = ~(out2 | _Q);    // NOR 게이트로 Q 계산
    assign _Q = ~(out1 | Q);    // NOR 게이트로 _Q 계산

endmodule