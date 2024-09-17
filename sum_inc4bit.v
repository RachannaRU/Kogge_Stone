`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:16:11
// Design Name: 
// Module Name: sum_inc4bit
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


module sum_inc4bit(A,B,S,C);
input [3:0]A,B;
output [3:0]S;
output C;
wire Pin,Hin;
assign Pin=0;
assign Hin=0;
wire P0,P1,P2,P3,H0,H1,H2,H3;
wire X0,X1,X2,X3;
wire X4,X5,X6;
wire v;


//Layer0;
grey_box a1 (A[0],B[0],P0,H0);
grey_box a2 (A[1],B[1],P1,H1);
grey_box a3 (A[2],B[2],P2,H2);
grey_box a4 (A[3],B[3],P3,H3);

//layer1
white_box a5(H0,Pin,Hin,X0);
white_box a6(H1,P0,H0,X1);
white_box a7(H2,P1,H1,X2);
white_box a8(H3,P2,H2,X3);

//layer2
greycircle a9(X1,H0,X0,X4);
//layer3
greycircle a10(X2,H1,X4,X5);
//layer4
greycircle a11(X3,H2,X5,X6);

assign S[0]=X0;
assign S[1]=X4;
assign S[2]=X5;
assign S[3]=X6;


and a12(v,X6,H3);
xor m1(C,P3,v);




endmodule
