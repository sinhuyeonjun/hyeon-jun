module demultiplexer(
  in_a,
  in_b,
  in_0,
  out_0,
  out_1,
  out_2,
  out_3
);

input in_a;
input in_b;
input in_0;
output reg out_0;
output reg out_1;
output reg out_2;
output reg out_3;

always@(*)
  if({in_a, in_b} == 2'b00)
    out_0 = in_0;
  else if({in_a, in_b} == 2'b01)
    out_1 = in_0;
  else if({in_a, in_b} == 2'b10)
    out_2 = in_0;
  else if({in_a, in_b} == 2'b11)
    out_3 = in_0;
  else 
    out_0 = in_0;  

endmodule 