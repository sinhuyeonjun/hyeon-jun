module FA_32bit(
    in_a,
    in_b,
    c_in,
    c_out,
    sum
);

input [31:0]in_a;
input [31:0]in_b;
input c_in;
output c_out;
output [31:0] sum;

wire carry;

FA_16bit fuck_you(
    .in_a(in_a[15:0]),
    .in_b(in_b[15:0]),
    .c_in(c_in),
    .sum(sum[15:0]),
    .c_out(carry)
);

FA_16bit fuck_you1(
    .in_a(in_a[31:16]),
    .in_b(in_b[31:16]),
    .c_in(carry),
    .sum(sum[31:16]),
    .c_out(c_out)
);

endmodule