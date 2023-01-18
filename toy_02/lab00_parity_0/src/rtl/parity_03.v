module parity_03(
    in_b,
    in_c,
    in_d,
    out_sum
);

input in_b;
input in_c;
input in_d;
output out_sum;

assign out_sum = in_b & (~in_c) & in_d;

endmodule