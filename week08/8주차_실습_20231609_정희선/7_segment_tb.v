`timescale 1ns / 1ps

module boolean_tb;
reg aa,bb,cc,dd;
wire a,b,c,d,e,f,g,dp,digit;

boolena u_boolean (
    .aa(aa ),
    .bb(bb ),
    .cc(cc ),
    .dd(dd ),
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    .f(f ),
    .g(g ),
    .dp(dp ),
    .digit(digit)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always@(aa or bb or cc or dd) begin
    aa <= #10 ~aa;
    bb <= #20 ~bb;
    cc <= #40 ~cc;
    dd <= #80 ~dd;
end

initial begin
    #500
    $finish;
end

endmodule