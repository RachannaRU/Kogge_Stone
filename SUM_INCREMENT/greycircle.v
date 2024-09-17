`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:26:46
// Design Name: 
// Module Name: greycircle
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


module greycircle(Xi,Hi1,Xi1,X);
input Xi,Hi1,Xi1;
output X;
wire w;
and i4(w,Hi1,Xi1);
xor i5(X,Xi,w);

endmodule
