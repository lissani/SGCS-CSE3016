`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst;
wire  [1:0] out;

boolean u_boolean(
    .clk(clk),
    .rst(rst),
    .out(out)
);

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    rst = 1'b0;
    #100 rst = 1'b1;     // 100ns �� ���� ����
    #200 rst = 1'b0;     // 300ns�� ���� ��ư �ٽ� ����
    #100 rst = 1'b1;     // 400ns�� ���� ����
    #300 rst = 1'b0;     // 700ns�� ���� ��ư �ٽ� ����
    #50  rst = 1'b1;     // 750ns�� ���� ����
end

initial begin
    #1000
    $finish;
end

endmodule