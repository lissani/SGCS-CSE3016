`timescale 1ns / 1ps

module boolean_tb(
    );
reg aa,bb,cc,dd,pp;
wire ee;

boolean u_boolean(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp),
    .e(ee)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
    pp=1'b0;
end

always @(aa or bb or cc or dd or pp) begin
    aa <= #50 ~ aa;
    bb <= #100 ~ bb;
    cc <= #150 ~ cc;
    dd <= #200 ~ dd;
    pp <= #250 ~ pp;
end

initial begin
    #750
    $finish;
end
endmodule

