`timescale 1ns / 1ps

module practice_tb(
    );
reg aa,bb;
wire ss,cc;

practice u_practice(
    .a(aa),
    .b(bb),
    .s(ss),
    .c(cc)
);

initial begin
    aa=1'b0;
    bb=1'b0;
end

always @(aa or bb) begin
    aa<= #50 ~aa;
    bb<= #100 ~bb;
end

initial begin
    #300
    $finish;
end

endmodule
