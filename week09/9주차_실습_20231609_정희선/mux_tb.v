`timescale 1ns / 1ps

module boolean_tb;
reg A,B,C,D,a,b;
wire out;

boolean u_boolean (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    a = 1'b0;
    b = 1'b0;
end

always@(A or B or C or D or a or b) begin
    A <= #10 ~A;
    B <= #20 ~B;
    C <= #30 ~C;
    D <= #40 ~D;
    a <= #50 ~C;
    b <= #60 ~D;
end

initial begin
    #800
    $finish;
end

endmodule