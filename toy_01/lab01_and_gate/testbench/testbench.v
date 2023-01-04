`timescale 1ns/1ps
`define T_CLK 10
module testbench();
    reg clk;
    reg in_a;
    reg in_b;
    wire out_sum;

    and_gate dut (
      .in_a(in_a),
      .in_b(in_b),
      .out_sum(out_sum)
    );
    always #5 clk = ~clk;
    initial
    begin
        in_a = 0; in_b = 0;
        #(`T_CLK *5) in_a = 0; in_b = 1; 
        #(`T_CLK *5) in_a = 1; in_b = 0; 
        #(`T_CLK *5) in_a = 1; in_b = 1;
        #(`T_CLK *5) $stop;
    end

endmodule