`timescale 1ns / 1ps

module boolean_tb;

reg clk, rst;
wire  [1:0] out;

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
    rst = 1'b0;
    #100 rst = 1'b1;     // 100ns 후 리셋 해제
    #200 rst = 1'b0;     // 300ns에 리셋 버튼 다시 눌림
    #100 rst = 1'b1;     // 400ns에 리셋 해제
    #300 rst = 1'b0;     // 700ns에 리셋 버튼 다시 눌림
    #50  rst = 1'b1;     // 750ns에 리셋 해제
end

initial begin
    #1000
    $finish;
end

endmodule