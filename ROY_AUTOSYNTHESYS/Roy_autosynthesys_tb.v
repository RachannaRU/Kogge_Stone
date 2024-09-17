`include "Roy_Autosynthesys.v"

module Roy_autosynthesys_tb;

reg [3:0]A,B;
wire [3:0]X;
integer i;
Roy_Autosynthesys UUT (.X(X),.A(A),.B(B));
initial begin
  A=4'b0000;
  B=4'b0000;
  for (i=0;i<10;i++)
  {
    A=A+1;
    B=A+2;
  }
  //#10 A=4'b1;
end
initial
$monitor(" X = %b P = %b H = %b X1 = %b",X,UUT.P,UUT.H,UUT.X1);

initial
#100 $finish;
initial begin
    $dumpfile("Roy_autosynthesys_tb.vcd");
    $dumpvars(0,Roy_autosynthesys_tb); 
end
endmodule