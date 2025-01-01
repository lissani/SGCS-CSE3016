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
    forever #10 clk = ~clk; // 20ns 주기로 클럭 반전
end

initial begin
    rst = 1'b0; // 초기에 리셋 활성화 (리셋 신호가 active high라고 가정)
    in = 1'b0; // 초기 입력값은 0
    #20 rst = 1'b1; // 20ns 후 리셋 비활성화

    // 시퀀스 입력 시뮬레이션 시작
    #30 in = 1'b1; #20; // 시간을 조금 더 주어서 시퀀스가 정확히 처리될 수 있도록 함
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // 첫 번째 '1101' 입력

    #30 in = 1'b1; #20;
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // 두 번째 '1101' 입력

    // 추가적으로 시퀀스를 더 입력하여 검출되는지 확인
    #30 in = 1'b1; #20;
    in = 1'b1; #20;
    in = 1'b0; #20;
    in = 1'b1; #20; // 세 번째 '1101' 입력
end

initial begin
    #500
    $finish;
end

endmodule
