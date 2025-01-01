`timescale 1ns / 1ps

module boolean(
    input clk, rst, in,
    output reg [3:0] out
);
    // �ʱ� ����
    initial out = 4'b0000;
    
    // ��� �������� ����
always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b0000; // ���� �� ��� �ʱ�ȭ
    end else begin
        out = out >> 1;
        out[3] = in;
    end
end

endmodule