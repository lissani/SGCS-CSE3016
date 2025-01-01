`timescale 1ns / 1ps

module boolean_tb;

reg Clk, D; 

wire Q, _Q;

boolean u_boolean (
.Clk (Clk ),
.D (D ),
.Q (Q ),
._Q (_Q )
);

initial begin
Clk = 1'b0;
D = 1'b0;
end

always Clk = #50 ~Clk;
always D = #100 ~D;

initial begin
    #1000
    $finish;
end

endmodule