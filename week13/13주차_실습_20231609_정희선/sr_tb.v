`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst, in;
wire  [3:0] out;

boolean u_boolean(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
);

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    rst = 1'b1;   // �ʱ� ���´� ���� ����
    in = 1'b0;    // �ʱ� �Է� ���� 0
    
    #100 rst = 1'b0;     // 100ns �� ���� Ȱ��ȭ (active-low)
    #50  rst = 1'b1;     // 150ns�� ���� ����
    #50  in = 1'b1;      // 200ns�� �Է��� 1�� ����
    #200 rst = 1'b0;     // 400ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1;     // 450ns�� ���� ����
    #100 in = 1'b0;      // 550ns�� �Է��� �ٽ� 0���� ����
    #150 rst = 1'b0;     // 700ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1;     // 750ns�� ���� ����
    #50  in = 1'b1;      // 800ns�� �Է��� 1�� ����
    #100 in = 1'b0;      // 900ns�� �Է��� �ٽ� 0���� ����t
end

initial begin
    #1000
    $finish;
end

endmodule