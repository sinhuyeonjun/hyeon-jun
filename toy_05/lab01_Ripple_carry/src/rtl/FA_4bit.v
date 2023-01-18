module FA_4bit(
  in_a,
  in_b,
  c_in,
  sum,
  c_out
);

input [3:0] in_a;
input [3:0] in_b;
input c_in;
output [3:0] sum;
output c_out;

wire c_out_0;
wire c_out_1;
wire c_out_2;
       
FA_1bit shit0(
  .in_a(in_a[0]),
  .in_b(in_b[0]),
  .c_in(c_in),
  .sum(sum[0]),
  .c_out(c_out_0)
);

FA_1bit shit1(
  .in_a(in_a[1]),
  .in_b(in_b[1]),
  .c_in(c_in[0]),
  .sum(sum[1]),
  .c_out(c_out_1)
);

FA_1bit shit2(
  .in_a(in_a[2]),
  .in_b(in_b[2]),
  .c_in(c_in[1]),
  .sum(sum[2]),
  .c_out(c_out_2)
);

FA_1bit shit4(
  .in_a(in_a[3]),
  .in_b(in_b[3]),
  .c_in(c_in[2]),
  .sum(sum[3]),
  .c_out(c_out)
);

endmodule 