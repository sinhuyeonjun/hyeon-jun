module encoder(
  in_0,
  in_1,
  in_2,
  in_3,
  in_4,
  in_5,
  in_6,
  in_7,
  out_a,
  out_b,
  out_c
);

input in_0;
input in_1;
input in_2;
input in_3;
input in_4;
input in_5;
input in_6;
input in_7;
output out_a;
output out_b;
output out_c;

assign out_a = in_4 ^ in_5 ^ in_6 ^ in_7;
assign out_b = in_2 ^ in_3 ^ in_6 ^ in_7;
assign out_c = in_1 ^ in_3 ^ in_5 ^ in_7;

endmodule 