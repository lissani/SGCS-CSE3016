`timescale 1ns / 1ps

module practice(
    input a,
    input b,
    output s,
    output c
    );
    
assign s = a^b;
assign c = a&b;
endmodule
