`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:22:40
// Design Name: 
// Module Name: white_box
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


module white_box(Hi,Pi1,Hi1,Xi,Hp1);
input Hi,Pi1,Hi1;
output Xi,Hp1;
assign Hp1=Hi1;
xor i3(Xi,Hi,Pi1);
endmodule
