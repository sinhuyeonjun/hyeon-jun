module conparator(
  in_a,
  in_b,
  in_c,
  in_d,
  out
);

input in_a;
input in_b;
input in_c;
input in_d;
output reg out;

always@(*)
  if({in_a, in_b, in_c, in_d} == 4'b0000)
    out = 1'b1;
  else if({in_a, in_b, in_c, in_d} == 4'b0101)
    out = 1'b1;
  else if({in_a, in_b, in_c, in_d} == 4'b1010)
    out = 1'b1;
  else if({in_a, in_b, in_c, in_d} == 4'b1111)
    out = 1'b1;
  else
    out = 1'b0;
endmodule