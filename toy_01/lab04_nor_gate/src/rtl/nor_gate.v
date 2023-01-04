module nor_gate(
    in_a,
    in_b,
    out_sum
);

input in_a;
input in_b;
output out_sum;

assign out_sum = ~(in_a | in_b);

endmodule 