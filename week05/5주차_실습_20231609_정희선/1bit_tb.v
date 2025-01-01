`timescale 1ns / 1ps

module 1bit_tb(
    );
reg aa,bb;
wire out1, out2, out3, out4;

1bit u_1bit (
    .a(aa),
    .b(bb),
    
    .equal(out1),
    .not_equal(out2),
    .left_big(out3),
    .right_big(out4)
);

initial begin
    aa=1'b0;
    bb=1'b0;
end

always @(aa or bb) begin
    aa <= #50 ~ aa;
    bb <= #100 ~ bb;
end

initial begin
    #500
    $finish;
end
endmodule
