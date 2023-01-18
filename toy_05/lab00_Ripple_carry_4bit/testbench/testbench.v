`timescale 1ns/1ps
`define T_CLK 10
module testbench();

reg [3:0] in_a;
reg [3:0] in_b;
reg c_in;
wire c_out;
wire [3:0] sum;

FA_4bit dut1(
    .in_a(in_a),
    .in_b(in_b),
    .c_in(c_in),
    .c_out(c_out),
    .sum(sum)
);

initial begin
    in_a = 4'h0; in_b = 4'h0; c_in = 1'b0;
    #(`T_CLK *1.1) in_a = 4'h0; in_b = 4'h1; c_in = 1'b1;
    #(`T_CLK *1.1) in_a = 4'h1; in_b = 4'h0;
    #(`T_CLK *1.1) in_a = 4'h1; in_b = 4'h1;
    #(`T_CLK *1.1) in_a = 4'h2; in_b = 4'h0;
    #(`T_CLK *1.1) $stop;
end

endmodule