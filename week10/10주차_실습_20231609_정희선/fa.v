module fa(
    input x, y, cin,
    output s, cout
    );

    assign s = (x ^ y) ^ cin;
    assign cout = (cin & (x ^ y)) | (x & y);

endmodule