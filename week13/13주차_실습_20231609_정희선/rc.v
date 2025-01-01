`timescale 1ns / 1ps

module boolean(
    input clk, rst,
    output reg [3:0] out
);
    // 초기 상태
    initial out = 4'b1000;
    
    // 상승 엣지에서 동작
always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b1000; // 리셋 시 출력 초기화
    end else begin
        out[0] <= out[1];
        out[1] <= out[2];
        out[2] <= out[3];
        out[3] <= out[0];
    end
end

endmodule