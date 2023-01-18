module full_adder(
    in_a,
    in_b,
    in_c,
    c_out,
    sum
);

input in_a;
input in_b;
input in_c;
output c_out;
output sum;

 assign sum = in_a ^ in_b ^ in_c;
 assign c_out = (in_a & in_b) | ((in_a ^ in_b) & in_c);

endmodule