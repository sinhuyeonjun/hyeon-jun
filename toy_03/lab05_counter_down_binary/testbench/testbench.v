`timescale 1ns/1ps
`define T_CLK 10
module testbench();

reg clk;
reg n_rst;
wire out;

counter_up_binary dut(
    .clk(clk),
    .n_rst(n_rst),
    .out(out)
);

always #5 clk = ~clk;

initial 
begin
    clk = 0; n_rst = 0;
    #(`T_CLK *0.7) n_rst = 1;
    
    #(`T_CLK *5) $stop;
end

endmodule
