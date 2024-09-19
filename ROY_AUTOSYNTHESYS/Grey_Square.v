module Grey_Square (
    output P,H,
    input A,B
);
/*module (P,H,A,B);
input A,B;
output P,H;
*/
or Prop (P,A,B);
xor Gen (H,A,B);

endmodule