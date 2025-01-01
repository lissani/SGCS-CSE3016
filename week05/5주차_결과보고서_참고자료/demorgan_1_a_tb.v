`timescale 1ns / 1ps

module boolean_tb(
    );
reg aa,bb;
wire cc;

boolean u_boolean (
    .a(aa),
    .b(bb),
    
    .c(cc)
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
