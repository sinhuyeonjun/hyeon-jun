module and_gate(
    in_a,
    in_b,
    in_c,
    out_sum
);

input in_a;
input in_b;
input in_c;
output out_sum;

assign out_sum = in_a & in_b & in_c;

endmodule