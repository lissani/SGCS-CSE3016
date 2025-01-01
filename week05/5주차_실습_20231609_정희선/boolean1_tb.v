`timescale 1ns / 1ps

module boolean1_tb(
    );
reg aa,bb,cc;
wire dd;

boolean1 u_boolean1 (
    .a(aa),
    .b(bb),
    .c(cc),
    
    .d(dd)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
end

always @(aa or bb or cc) begin
    aa <= #50 ~ aa;
    bb <= #100 ~ bb;
    cc <= #150 ~ cc;
end

initial begin
    #300
    $finish;
end
endmodule
