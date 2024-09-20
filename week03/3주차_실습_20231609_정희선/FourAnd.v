`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 18:29:28
// Design Name: 
// Module Name: FourAnd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FourAnd(
    input a,b,c,d,
    output e,f,g

    );
    assign e=a&b;
    assign f=e&c;
    assign g=f&d;
endmodule
