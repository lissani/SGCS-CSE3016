`timescale 1ns / 1ps

module boolean(
    input clk, rst,
    output reg [1:0] out
);
    // 초기 상태
    initial out = 2'b00;
    
    // 상승 엣지에서 동작
always @(posedge clk) begin
    if (!rst) begin
        out <= 2'b00; // 리셋 시 출력 초기화
    end else begin
        out <= out + 1; // 카운터 증가
    end
end

endmodule