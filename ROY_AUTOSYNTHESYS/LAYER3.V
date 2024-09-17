module White_Circle (
    output X,H,
    input  X_0,H_0,X_1,H_1
);

wire w1;
and WC1 (w1,X_1,H_0);
xor WC2 (X,w1,X_0);
and WC3 (H,H_2,H_0);

endmodule