`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 12:52:07
// Design Name: 
// Module Name: sum_inc8bit_tb
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
module sum_inc8bit_tb();
    reg [7:0] A, B;   
    wire [7:0] S;     
    wire C;           

    
    sum_inc8bit uut (
        .A(A),
        .B(B),
        .S(S),
        .C(C)
    );

    
    initial begin
        
        A = 4'b00000000;
        B = 4'b00000000;
        
        
        #10 A = 8'b00010011; B = 8'b00101010;  
        #10 A = 8'b11110000; B = 8'b00010010;  
        #10 A = 8'b01100101; B = 8'b01100100;  
        #10 A = 8'b10101010; B = 8'b10111101;  
        #10 A = 8'b10001101; B = 8'b11000101;  
        
        
        #10 $finish;
    end

    
    initial begin
        
        $monitor("Time = %0t: A = %b, B = %b, S = %b, Carry = %b", $time, A, B, S, C);
    end

    
    initial begin
        #15;
        forever begin
            if (C) begin
                $display("9-bit result: %b (Carry + Sum)", {C, S});
            end else begin
                $display("8-bit result: %b (Sum)", S);
            end
            #10;  
        end
    end
endmodule

