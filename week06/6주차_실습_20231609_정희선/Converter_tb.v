`timescale 1ns / 1ps

module boolean_tb(
    );
reg a3,a2,a1,a0;
wire b3,b2,b1,b0;

boolean u_boolean(
    .a3(a3),
    .a2(a2),
    .a1(a1),
    .a0(a0),
    .b3(b3),
    .b2(b2),
    .b1(b1),
    .b0(b0)
);

initial begin
    a3=1'b0;
    a2=1'b0;
    a1=1'b0;
    a0=1'b0;
end

always @(a3 or a2 or a1 or a0) begin
    a3 <= #50 ~ a3;
    a2 <= #100 ~ a2;
    a1 <= #150 ~ a1;
    a0 <= #200 ~ a0;
end

initial begin
    #500
    $finish;
end
endmodule

