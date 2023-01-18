`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg in_a;
reg clk;
reg n_rst;
wire out;

FF_D dut(
    .in_a(in_a),
    .clk(clk),
    .n_rst(n_rst),
    .out(out)
);
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 n_rst = 1; in_a <= 0;
 #100; n_rst = 0; in_a <= 1;
 #100; in_a <= 0;
 #100; in_a <= 1;
 #100; $stop;
end 
endmodule
