`timescale 1ns / 1ps

module boolean_tb;

reg bin;
reg [3:0] A;
reg [3:0] B;
wire [4:0] b;
wire [3:0] D;

boolean u_boolean(
    .bin(bin),
    .A(A),
    .B(B),
    .b(b),
    .D(D)
);

initial begin
        bin = 0;
        A = 4'b0000;
        B = 4'b0000;

end

always begin
    #10 bin = ~bin;         
    #20 A = A + 1;          
    #40 B = B + 1;           
end

initial begin
    #200
    $finish;
end

endmodule