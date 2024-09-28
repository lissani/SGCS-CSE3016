`timescale 1ns / 1ps

module FourAOI_tb(
    );
    
reg aa,bb,cc,dd;
wire ee,ff,gg;
   
FourAOI u_FourAOI(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    
    .e(ee),
    .f(ff),
    .g(gg)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end

always @(aa or bb or cc or dd) begin
    aa <= #50 ~aa;
    bb <= #100 ~bb;
    cc <= #150 ~cc;
    dd <= #200 ~dd;
end

initial begin
    #500
    $finish;
end
endmodule
