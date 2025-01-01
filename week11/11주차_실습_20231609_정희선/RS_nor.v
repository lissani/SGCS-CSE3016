`timescale 1ns / 1ps

module boolean(
    input Clk, R, S,
    output Q,
    output _Q
);

    wire out1;
    wire out2;

    assign out1 = ~(R | ~Clk);  // Clk�� R�� �Է� ����
    assign out2 = ~(S | ~Clk);  // Clk�� S�� �Է� ����
    assign Q = ~(out2 | _Q);    // NOR ����Ʈ�� Q ���
    assign _Q = ~(out1 | Q);    // NOR ����Ʈ�� _Q ���

endmodule