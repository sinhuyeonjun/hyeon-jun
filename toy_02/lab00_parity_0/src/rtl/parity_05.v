module parity_05(
    in_a,
    in_d,
    out_sum
);

input in_a;
input in_d;
output out_sum;

assign out_sum = in_a & in_d;

endmodule 