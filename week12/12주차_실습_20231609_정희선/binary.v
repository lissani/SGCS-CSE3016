`timescale 1ns / 1ps

module boolean(
    input clk, rst,
    output reg [1:0] out
);
    // �ʱ� ����
    initial out = 2'b00;
    
    // ��� �������� ����
always @(posedge clk) begin
    if (!rst) begin
        out <= 2'b00; // ���� �� ��� �ʱ�ȭ
    end else begin
        out <= out + 1; // ī���� ����
    end
end

endmodule