`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 12:02:39
// Design Name: 
// Module Name: sum_inc4bit_tb
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


module sum_inc4bit_tb();
    reg [3:0] A, B;   
    wire [3:0] S;     
    wire C;           

    
    sum_inc4bit uut (
        .A(A),
        .B(B),
        .S(S),
        .C(C)
    );

    
    initial begin
        
        A = 4'b0000;
        B = 4'b0000;
        
        
        #10 A = 4'b0001; B = 4'b0010;  
        #10 A = 4'b1111; B = 4'b0001;  
        #10 A = 4'b0110; B = 4'b0110;  
        #10 A = 4'b1010; B = 4'b1011;  
        #10 A = 4'b1100; B = 4'b1100;  
        
        
        #10 $finish;
    end

    
    initial begin
        
        $monitor("Time = %0t: A = %b, B = %b, S = %b, Carry = %b", $time, A, B, S, C);
    end

    
    initial begin
        #15;
        forever begin
            if (C) begin
                $display("5-bit result: %b (Carry + Sum)", {C, S});
            end else begin
                $display("4-bit result: %b (Sum)", S);
            end
            #10;  
        end
    end
endmodule

    

