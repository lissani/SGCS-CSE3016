`timescale 1ns / 1ps

module boolean(
    input clk, rst,
    output reg [3:0] out
);
    // �ʱ� ����
    initial out = 4'b1000;
    
    // ��� �������� ����
always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b1000; // ���� �� ��� �ʱ�ȭ
    end else begin
        out[0] <= out[1];
        out[1] <= out[2];
        out[2] <= out[3];
        out[3] <= out[0];
    end
end

endmodule