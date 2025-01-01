`timescale 1ns / 1ps

module boolean_tb;

reg Cin;
reg [3:0] A;
reg [3:0] B;
wire  Cout;
wire [3:0] Sum;

boolean u_boolean(
    .Cin(Cin),
    .A(A),
    .B(B),
    .Cout(Cout),
    .Sum(Sum)
);

initial begin
    Cin = 0;
    A = 4'b0000;
    B = 4'b0000;

end

always begin
    #10 Cin = ~Cin;           // Cin�� 10ns���� ���
    #30 A = A + 4;            // A�� 20ns���� 1 ����
    #60 B = B + 6;            // B�� 40ns���� 1 ����      
end

initial begin
    #300
    $finish;
end

endmodule