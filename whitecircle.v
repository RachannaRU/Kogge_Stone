`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:30:19
// Design Name: 
// Module Name: whitecircle
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


module whitecircle(Xi,Hi1,Xi1,Hi2,X,Hk1);
input Xi,Hi1,Xi1,Hi2;
output X,Hk1;
and i5(Hk1,Hi1,Hi2);
greycircle i6(Xi,Hi1,Xi1,X);

endmodule
