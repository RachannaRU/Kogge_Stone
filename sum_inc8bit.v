`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 12:12:47
// Design Name: 
// Module Name: sum_inc8bit
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


module sum_inc8bit( A,B,S,C);

input [7:0]A,B;
output [7:0]S;
output C;
wire Pin,Hin;
assign Pin=0;
assign Hin=0;
wire [7:0]P;
wire [10:0]H;
wire [17:0]X;
wire v;


//Layer0;
grey_box a1 (A[0],B[0],P[0],H[0]);
grey_box a2 (A[1],B[1],P[1],H[1]);
grey_box a3 (A[2],B[2],P[2],H[2]);
grey_box a4 (A[3],B[3],P[3],H[3]);
grey_box a5 (A[4],B[4],P[4],H[4]);
grey_box a6 (A[5],B[5],P[5],H[5]);
grey_box a7 (A[6],B[6],P[6],H[6]);
grey_box a8 (A[7],B[7],P[7],H[7]);



//layer1
white_box b1(H[0],Pin,Hin,X[0]);
white_box b2(H[1],P[0],H[0],X[1]);
white_box b3(H[2],P[1],H[1],X[2]);
white_box b4(H[3],P[2],H[2],X[3]);
white_box b5(H[4],P[3],H[3],X[4]);
white_box b6(H[5],P[4],H[4],X[5]);
white_box b7(H[6],P[5],H[5],X[6]);
white_box b8(H[7],P[6],H[6],X[7]);

//layer2
greycircle c1(X[1],H[0],X[0],X[8]);
whitecircle c2(X[5],H[4],X[4],H[3],X[9],H[8]);

//layer3
greycircle c3(X[2],H[1],X[8],X[10]);
whitecircle c4(X[6],H[5],X[9],H[8],X[11],H[9]);

//layer4
greycircle c5(X[3],H[2],X[10],X[12]);
whitecircle c6(X[7],H[6],X[11],H[9],X[13],H[10]);

//large5
greycircle c7(X[4],H[3],X[12],X[14]);
greycircle c8(X[9],H[8],X[12],X[15]);
greycircle c9(X[11],H[9],X[12],X[16]);
greycircle c10(X[13],H[10],X[12],X[17]);

assign S[0]=X[0];
assign S[1]=X[8];
assign S[2]=X[10];
assign S[3]=X[12];
assign S[4]=X[14];
assign S[5]=X[15];
assign S[6]=X[16];
assign S[7]=X[17];



and a12(v,X[17],H[7]);
xor m1(C,P[7],v);






endmodule
