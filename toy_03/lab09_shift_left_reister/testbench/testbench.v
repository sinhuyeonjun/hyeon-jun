`timescale 1ns/1ps
`define T_CLK 10
module testbench();

reg clk;
reg n_rst;
wire [7:0] out;

shift_left_register dut(
    .clk(clk),
    .n_rst(n_rst),
    .out(out)
);
always #10 clk = ~clk;

initial begin
    clk = 0; n_rst = 0; 
    #(`T_CLK *0.7) n_rst = 1;
    #(`T_CLK *5) $stop;
end

endmodule