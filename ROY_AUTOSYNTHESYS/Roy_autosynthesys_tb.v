`include "Roy_Autosynthesys.v"

module Roy_autosynthesys_tb;

reg [3:0]A,B;
wire [3:0]X;
wire Cout;
integer i;

Roy_Autosynthesys UUT (.X(X),.Cout(Cout),.A(A),.B(B));

initial begin
 /* A = 4'b1000;
  B = 4'b1000;
  #10 A = 4'b1111;
  #10 B = 4'b1111;*/
A=4'b0000;
B=4'b0000;
end
initial
$monitor(" X = %b P = %b H = %b X1 = %b",X,UUT.P,UUT.H,UUT.X1);
always #10 A=A+4'b0001;
always #20 B=B+4'b0001;
initial
#2600 $finish;

initial begin
    $dumpfile("Roy_autosynthesys_tb.vcd");
    $dumpvars(0,Roy_autosynthesys_tb); 
end

endmodule
