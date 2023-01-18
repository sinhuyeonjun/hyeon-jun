`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg clk;
reg n_rst;
reg in_a;
reg in_b;
wire out_a;
wire out_b;

FF_SR dut1(
    .clk(clk),
    .n_rst(n_rst),
    .in_a(in_a),
    .in_b(in_b),
    .out_a(out_a),
    .out_b(out_b)
);

always #10 clk = ~clk;
initial 
begin
    clk = 0; n_rst = 1'b0; in_a = 0; in_b = 0;
    #100 n_rst = 1'b1; in_a = 0; in_b = 1;
    #100 in_a = 1; in_b = 0;
    #100 in_a = 1; in_b = 1;
    #100 $stop;
end

endmodule