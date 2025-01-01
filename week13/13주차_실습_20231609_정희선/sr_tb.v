`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst, in;
wire  [3:0] out;

boolean u_boolean(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
);

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    rst = 1'b1;   // 초기 상태는 리셋 해제
    in = 1'b0;    // 초기 입력 값은 0
    
    #100 rst = 1'b0;     // 100ns 후 리셋 활성화 (active-low)
    #50  rst = 1'b1;     // 150ns에 리셋 해제
    #50  in = 1'b1;      // 200ns에 입력을 1로 변경
    #200 rst = 1'b0;     // 400ns에 리셋 활성화
    #50  rst = 1'b1;     // 450ns에 리셋 해제
    #100 in = 1'b0;      // 550ns에 입력을 다시 0으로 변경
    #150 rst = 1'b0;     // 700ns에 리셋 활성화
    #50  rst = 1'b1;     // 750ns에 리셋 해제
    #50  in = 1'b1;      // 800ns에 입력을 1로 변경
    #100 in = 1'b0;      // 900ns에 입력을 다시 0으로 변경t
end

initial begin
    #1000
    $finish;
end

endmodule