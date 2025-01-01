`timescale 1ns / 1ps

module boolean_tb(
    );
reg aa,bb,bb_n1;
wire dd,bb_n;

boolean u_boolean(
    .a(aa),
    .b(bb),
    .b_n1(bb_n1),
    .d(dd),
    .b_n(bb_n)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    bb_n1=1'b0;
end

always @(aa or bb or bb_n1) begin
    aa <= #50 ~ aa;
    bb <= #100 ~ bb;
    bb_n1 <= #150 ~ bb_n1;
end

initial begin
    #500
    $finish;
end
endmodule

