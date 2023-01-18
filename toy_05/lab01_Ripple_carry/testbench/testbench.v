`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg [31:0] in_a; 
reg [31:0] in_b;
reg c_in;
wire [31:0] sum;
wire c_out;

FA_31bit dut(
    .in_a(in_a),
    .in_b(in_b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
);

initial 
begin
    in_a = 32'h0; in_b = 32'h0; c_in = 1'b0;
    #(`T_CLK *1.1) $stop;
end

endmodule