module parity_1(
    in_a,
    in_b,
    in_c,
    in_d,
    out_sum
);

input in_a;
input in_b;
input in_c;
input in_d;
output out_sum;

assign out_sum = ~(in_a ^ in_b ^ in_c ^ in_d);

endmodule