`timescale 1ns / 1ps

module boolean(
    input clk, rst, state,
    output reg [3:0] out,
    output reg [6:0] seg,
    output reg digit
);
    // �ʱ� ����
    initial out <= 4'b0000;
    initial digit = 1;
    
    // ��� �������� ����
always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b0000; // ���� �� ��� �ʱ�ȭ
    end else begin
        if(state == 1'b1) begin //up mode
            if (out == 4'b1111) begin
                out <= 4'b0000;
            end
            else begin
                out <= out + 4'b0001;
            end
            seg <= 7'b0111110;
        end
        else begin
            if (out == 4'b0000) begin //down mode
                out <= 4'b1111;
            end
            else begin
                out <= out - 4'b0001;
            end
            seg <= 7'b0111101;
        end
    end
end

endmodule