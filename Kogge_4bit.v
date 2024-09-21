`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:32 10/28/2022 
// Design Name: 
// Module Name:    kogge_stone_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module grey_box(Ai,Bi,Pi,Hi);
input Ai,Bi;
output Pi,Hi;

or a1(Pi,Ai,Bi);
xor a2(Hi,Ai,Bi);
endmodule
  
module white_box(Hi,Pki,Hki,Xi,Hkj);
input Hi,Pki,Hki;
output Xi,Hkj;
assign Hkj=Hki;
xor a3(Xi,Hi,Pki);
endmodule

module grey_circle(Xi,Hki,Xki,X);
input Xi,Hki,Xki;
output X;

wire W1;
and a4(W1,Hki,Xki);
xor a5(X,Xi,W1);
endmodule 

module white_circle(Xi,Hki,Xki,Hkki,X,H);
input Xi,Hki,Xki,Hkki;
output X,H;

and a6(H,Hki,Hkki);
grey_circle a7(Xi,Hki,Xki,X);
endmodule



module kogge_stone_4bit(A,B,SUM,Cout);
input [3:0]A,B;
output [3:0]SUM;
output Cout;

wire Pin,Hin;

assign Pin=1'b0;
assign Hin=1'b0;

//layer0 wire
wire P0,P1,P2,P3,H0,H1,H2,H3;
 
//layer1 wire
wire X0,X1,X2,X3;

//layer2 wire
wire X4,X5,X6,H4,H5;
 
//layer3 wire
wire X7,X8;

//cout generation
wire v1;


//layer0
grey_box g1(A[0],B[0],P0,H0);
grey_box g2(A[1],B[1],P1,H1);
grey_box g3(A[2],B[2],P2,H2);
grey_box g4(A[3],B[3],P3,H3);

//layer1
white_box w1(H0,Pin,Hin,X0);
white_box w2(H1,P0,H0,X1);
white_box w3(H2,P1,H1,X2);
white_box w4(H3,P2,H2,X3);

//layer2
grey_circle g5(X1,H0,X0,X4);
white_circle b1(X2,H1,X1,H0,X5,H4);
white_circle b2(X3,H2,X2,H1,X6,H5);

//layer3
grey_circle g6(X5,H4,X0,X7);
grey_circle g7(X6,H5,X4,X8);

assign SUM[0]=X0;
assign SUM[1]=X4;
assign SUM[2]=X7;
assign SUM[3]=X8;

and m2(v1,H3,X8);
xor m1(Cout,v1,P3);


endmodule