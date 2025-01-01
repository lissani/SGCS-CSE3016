`timescale 1ns / 1ps

module boolean_tb(
    );
reg aa,bb,cc_in;
wire ss,cc_out;

boolean u_boolean(
    .a(aa),
    .b(bb),
    .c_in(cc_in),
    .s(ss),
    .c_out(cc_out)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc_in=1'b0;
end

always @(aa or bb or cc_in) begin
    aa <= #50 ~ aa;
    bb <= #100 ~ bb;
    cc_in <= #150 ~ cc_in;
end

initial begin
    #500
    $finish;
end
endmodule

