module Grey_Circle(
    output X,
    input X_0,H_0,X_1
);

wire w1;
and GC1 (w1,X_1,H_0);
xor GC2 (X,w1,X_0);

endmodule