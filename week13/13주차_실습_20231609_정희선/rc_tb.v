`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst;
wire  [3:0] out;

boolean u_boolean(
    .clk(clk),
    .rst(rst),
    .out(out)
);

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    rst = 1'b1;   // 초기 상태는 리셋 해제
    
    #100 rst = 1'b0; // 100ns에 리셋 활성화
    #50  rst = 1'b1; // 150ns에 리셋 비활성화
      
    #300 rst = 1'b0; // 450ns에 리셋 활성화
    #50  rst = 1'b1; // 500ns에 리셋 비활성화
    
    #200 rst = 1'b0; // 700ns에 리셋 활성화
    #50  rst = 1'b1; // 750ns에 리셋 비활성화
    
    #200 rst = 1'b0; // 950ns에 리셋 활성화
    #50  rst = 1'b1; // 1000ns에 리셋 비활성화
end

initial begin
    #1000
    $finish;
end

endmodule