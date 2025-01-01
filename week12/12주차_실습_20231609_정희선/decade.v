`timescale 1ns / 1ps

module boolean(
    input clk, rst,
    output reg [3:0] out
);
    // 초기 상태
    initial out = 4'b0000;
    
    // 상승 엣지에서 동작
always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b0000; // 리셋 시 출력 초기화
    end else if (out == 4'b1001) begin
        out <= 4'b0000; // 9에서 0으로 초기화
    end else begin
        out <= out + 1; // 카운터 증가
    end
end

endmodule