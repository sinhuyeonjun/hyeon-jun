`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg in_a;
reg clk;
reg n_rst;
wire out;

FF_T dut(
    .in_a(in_a),
    .clk(clk),
    .n_rst(n_rst),
    .out(out)
);

always #10 clk = ~clk;

initial 
begin
    clk = 0; in_a = 0; n_rst = 0;
    #(`T_CLK * 5) in_a = 1; n_rst = 1;
    #(`T_CLK * 5) in_a = 0; n_rst = 0;
    #(`T_CLK * 5) in_a = 1; n_rst = 1;
    #(`T_CLK * 5) $stop;
end
endmodule 