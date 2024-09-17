`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:17:20
// Design Name: 
// Module Name: grey_box
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


module grey_box(Ai,Bi,Pi,Hi);
input Ai,Bi;
output Pi,Hi;
or i1(Pi,Ai,Bi);
xor i2(Hi,Ai,Bi);

endmodule
