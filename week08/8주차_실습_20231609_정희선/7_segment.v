`timescale 1ns / 1ps

module boolean(
    input aa,
    input bb,
    input cc,
    input dd,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output digit
    
 
    );

assign a = ((~aa)&&(cc)) || (aa&&(~dd)) || ((~aa)&&(~bb)&&(~dd)) || ((~aa)&&bb&&dd) || (aa&&bb&&cc) || (aa&&(~bb)&&(~cc));
assign b = ((~aa)&&(~bb)) || ((~aa)&&(~cc)&&(~dd)) || ((~aa)&&cc&&dd) || (aa&&(~bb)&&(~dd)) || (aa&&(~cc)&&dd);
assign c = ((~aa)&&bb) || (aa&&(~bb)) || ((~cc)&&dd) || ((~aa)&&(~bb)&&(~cc)) || ((~aa)&&cc&&dd);
assign d = ((~aa)&&(~bb)&&(~dd)) || (aa&&(~cc)&(~dd)) || (bb&&(~cc)&&dd) || ((~bb)&&cc&&dd) || (bb&&cc&&(~dd));
assign e = (aa&&bb) || ((~bb)&&(~dd)) || (aa&&cc) || (cc&&(~dd));
assign f = ((~cc)&&(~dd)) || (aa&&(~bb)) || (aa&&cc) || ((~aa)&&bb&&(~cc)) || (bb&&cc&&(~dd));
assign g = (aa&&(~bb)) || (aa&&dd) || ((~bb)&&cc) || (cc&&(~dd)) || ((~aa)&&bb&&(~cc));

assign dp = 1;
assign digit = a || b || c || d || e || f || g;

endmodule