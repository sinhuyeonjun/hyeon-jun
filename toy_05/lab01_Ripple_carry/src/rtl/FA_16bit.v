module FA_16bit(
    in_a,
    in_b,
    c_in,
    c_out,
    sum
);

input [15:0] in_a;
input [15:0] in_b;
input c_in;
output c_out;
output [15:0] sum;

wire [3:0] c_out;

FA_4bit fuck0(
    .in_a(in_a[3:0]),
    .in_b(in_b[3:0]),
    .c_in(c_in),
    .c_out(c_out[0]),
    .sum(sum[3:0])
);

FA_4bit fuck1(
    .in_a( in_a[7:4]),
    .in_b(in_b[7:4]),
    .c_in(c_in[0]),
    .c_out(c_out[1]),
    .sum(sum[7:4])
);

FA_4bit fuck2(
    .in_a(in_a[11:8]),
    .in_b(in_b[11:8]),
    .c_in(c_in[1]),
    .c_out(c_out[2]),
    .sum(sum[11:8])
);

FA_4bit fuck3(
    .in_a(in_a[15:12]),
    .in_b(in_b[15:12]),
    .c_in(c_in[2]),
    .c_out(c_out[3]),
    .sum(sum[15:12])
);

endmodule