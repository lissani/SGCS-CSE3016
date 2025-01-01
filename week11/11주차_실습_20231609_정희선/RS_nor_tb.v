`timescale 1ns / 1ps

module boolean_tb;

reg Clk,R,S;
wire  Q, _Q;

boolean u_boolean(
    .Clk(Clk),
    .R(R),
    .S(S),
    .Q(Q),
    ._Q(_Q)
);

initial begin
    Clk = 1'b0;
    forever #50 Clk = ~Clk;
end

initial begin
    R = 1'b0;
    S = 1'b0;
    #100 R = 1'b1; S = 1'b0; // Reset 상태
    #100 R = 1'b0; S = 1'b1; // Set 상태
    #100 R = 1'b1; S = 1'b1; // 금지 상태
    #100 R = 1'b0; S = 1'b0; // 유지 상태
    #100 R = 1'b1; S = 1'b0; // Reset 상태
    #100 R = 1'b0; S = 1'b1; // Set 상태
    #100 R = 1'b1; S = 1'b1; // 금지 상태
    #100 R = 1'b0; S = 1'b0; // 유지 상태
end

initial begin
    #1000
    $finish;
end

endmodule