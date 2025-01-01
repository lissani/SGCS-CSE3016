`timescale 1ns / 1ps

module boolean_tb;
reg A0,A1,A2,A3;
wire b1, b2, b3, b4, b5, b6, b7, b8, b9;

boolean u_boolean (
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .b4(b4),
    .b5(b5),
    .b6(b6),
    .b7(b7),
    .b8(b8),
    .b9(b9)
);

initial begin
    A0 = 1'b0;
    A1 = 1'b0;
    A2 = 1'b0;
    A3 = 1'b0;
end

always@(A0 or A1 or A2 or A3) begin
    A0 <= #10 ~A0;
    A1 <= #20 ~A1;
    A2 <= #30 ~A2;
    A3 <= #40 ~A3;
end

initial begin
    #250
    $finish;
end

endmodule