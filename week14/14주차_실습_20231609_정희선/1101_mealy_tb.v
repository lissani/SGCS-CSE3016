`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst, in;
wire out;

boolean u_boolean(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
);

initial begin
    clk = 1'b0;
    forever #10 clk = ~clk; // 20ns �ֱ�� Ŭ�� ����
end

initial begin
    rst = 1'b0; // �ʱ⿡ ���� Ȱ��ȭ (���� ��ȣ�� active high��� ����)
    in = 1'b0; // �ʱ� �Է°��� 0
    #20 rst = 1'b1; // 20ns �� ���� ��Ȱ��ȭ

    // ������ �Է� �ùķ��̼� ����
    #30 in = 1'b1; #20; // �ð��� ���� �� �־ �������� ��Ȯ�� ó���� �� �ֵ��� ��
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // ù ��° '1101' �Է�

    #30 in = 1'b1; #20;
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // �� ��° '1101' �Է�

    // �߰������� �������� �� �Է��Ͽ� ����Ǵ��� Ȯ��
    #30 in = 1'b1; #20;
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // �� ��° '1101' �Է�
end

initial begin
    #500
    $finish;
end

endmodule
