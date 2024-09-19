module White_Square (
    output X,H,
    input H_0,P_1,H_1
);

assign H = H_1;

//wire w1;
//or  WS1 (w1,P_1,H_0);
xor WS2 (X,H_0,P_1);
    
endmodule