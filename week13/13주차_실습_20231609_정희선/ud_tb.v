`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst;
wire  [3:0] out;

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
    rst = 1'b1;   // �ʱ� ���´� ���� ����
    
    #100 rst = 1'b0; // 100ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1; // 150ns�� ���� ��Ȱ��ȭ
      
    #300 rst = 1'b0; // 450ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1; // 500ns�� ���� ��Ȱ��ȭ
    
    #200 rst = 1'b0; // 700ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1; // 750ns�� ���� ��Ȱ��ȭ
    
    #200 rst = 1'b0; // 950ns�� ���� Ȱ��ȭ
    #50  rst = 1'b1; // 1000ns�� ���� ��Ȱ��ȭ
end

initial begin
    #1000
    $finish;
end

endmodule