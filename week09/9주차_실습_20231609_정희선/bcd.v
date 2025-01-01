`timescale 1ns / 1ps

module boolean(
    input A0,
    input A1,
    input A2,
    input A3,
    output b1,
    output b2,
    output b3,
    output b4,
    output b5,
    output b6,
    output b7,
    output b8,
    output b9
    );

assign b1 = (A0)&(~A1)&(~A2)&(~A3);
assign b2 = (~A0)&(A1)&(~A2)&(~A3);
assign b3 = (A0)&(A1)&(~A2)&(~A3);
assign b4 = (~A0)&(~A1)&(A2)&(~A3);
assign b5 = (A0)&(~A1)&(A2)&(~A3);
assign b6 = (~A0)&(A1)&(A2)&(~A3);
assign b7 = (A0)&(A1)&(A2)&(~A3);
assign b8 = (~A0)&(~A1)&(~A2)&(A3);
assign b9 = (A0)&(~A1)&(~A2)&(A3);

endmodule