`timescale 1ns/1ps
`define T_CLK 10
module testbench();
reg in_a;
reg in_b;
reg clk;
wire out_a;
wire out_b;

FF_JK dut(
    .in_a(in_a),
    .in_b(in_b),
    .clk(clk),
    .out_a(out_a),
    .out_b(out_b)
);

always #10 clk = ~clk;
initial 
begin
    clk = 0; in_a = 0; in_b = 0;
    #100 in_a = 0; in_b = 1;
    #100 in_a = 1; in_b = 0;
    #100 in_a = 1; in_b = 1;
    #100 $stop;
end

endmodule