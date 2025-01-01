`timescale 1ns / 1ps

module boolean(
    input clk, rst, in,
    output reg out
);

reg[3:0] seq; //최근 4개 입력 비트
reg[3:0] x = 4'b1101; //검출 시퀀스

initial out = 1'b0;
    
// 상승 엣지에서 동작
always @(posedge clk) begin
    if (!rst) begin
        // 리셋 시 초기화
        seq[3] <= 1'b0;
        seq[2] <= 1'b0;
        seq[1] <= 1'b0;
        seq[0] <= 1'b0;
        out <= 1'b0;
    end else begin
        seq[3] <= seq[2];
        seq[2] <= seq[1];
        seq[1] <= seq[0];
        seq[0] <= in;
    end
if(seq == x) out <= 1'b1;
else out <= 1'b0;
end
endmodule