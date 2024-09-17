`include "LAYER1.v"
`include "LAYER2.v"
`include "LAYER3.v"
`include "LAYER4.v"

module Roy_Autosynthesys(
    output [N-1:0]X,
    input [N-1:0]A,B
);
//initial assign X=0;

parameter N = 4;
wire [N-1:0]H,P;
wire [N-1:0]X1,H1;
wire X3;

Grey_Square I1 (P[0],H[0],A[0],B[0]);
Grey_Square I2 (P[1],H[1],A[1],B[1]);
Grey_Square I3 (P[2],H[2],A[2],B[2]);
Grey_Square I4 (P[3],H[3],A[3],B[3]);

wire H__1,H__2;

White_Square I5 (X[0],H__1,H[0],1'b0,1'b0);
White_Square I6 (X1[1],H1[0],H[1],P[0],H[0]);
White_Square I7 (X1[2],H1[1],H[2],P[1],H[1]);
White_Square I8 (X1[3],H1[2],H[3],P[2],H[2]);

Grey_Circle  I9  (X[1],X1[1],H1[0],X1[0],1'b0);
Grey_Circle  I10 (X[2],X1[2],H1[1],X[1],H1[0]);

White_Circle I11 (X3,H__2,X1[3],H[2],X1[2],H1[2]);

Grey_Circle  I12 (X[3],X3,H1[2],X[1],H1[0]);
//Grey_Circle  I13 (X[2],X1[2],H1[1],X[3],H1[0]);
endmodule