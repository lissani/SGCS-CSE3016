`timescale 1ns / 1ps

module boolean(
    input Clk, D,
    output Q, _Q
    );
    
    wire out1;
    wire out2;
    
    assign out1 = ~D&Clk;
    assign out2 = D&Clk;
    assign Q = ~(out1|_Q);
    assign _Q = ~(out2|Q);
    
endmodule