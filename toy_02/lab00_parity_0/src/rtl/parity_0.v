module parity_0(
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
wire out_sum_01, out_sum_02, out_sum_03, out_sum_04, out_sum_05;

assign out_sum = out_sum_01 | out_sum_02 | out_sum_03| out_sum_04| out_sum_05;

parity_01 dut1(
    .in_a(in_a),
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .out_sum(out_sum_01)
);

parity_02 dut2(
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .out_sum(out_sum_02)
);

parity_03 dut3(
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .out_sum(out_sum_03)
);

parity_04 dut4(
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .out_sum(out_sum_04)
);

parity_05 dut5(
    .in_a(in_a),
    .in_d(in_d),
    .out_sum(out_sum_05)
);

endmodule