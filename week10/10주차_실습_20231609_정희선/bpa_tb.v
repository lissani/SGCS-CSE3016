`timescale 1ns / 1ps

module boolean_tb;

reg Cin;
reg [3:0] A;
reg [3:0] B;
wire [4:0] C;
wire [3:0] S;

boolean u_boolean(
    .Cin(Cin),
    .A(A),
    .B(B),
    .C(C),
    .S(S)
);

initial begin
        Cin = 0;
        A = 4'b0000;
        B = 4'b0000;

end

always begin
    #10 Cin = ~Cin;         
    #20 A = A + 1;          
    #40 B = B + 1;           
end

initial begin
    #200
    $finish;
end

endmodule