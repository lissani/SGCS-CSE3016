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
    rst = 1'b0;
    #100 rst = 1'b1;     // 리셋 해제 (100ns 후)
end

initial begin
    #1500
    $finish;
end

endmodule