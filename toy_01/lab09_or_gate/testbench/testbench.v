`timescale 1ns/1ps
`define T_CLK 10
module testbench();
    reg clk;
    reg in_a;
    reg in_b;
    reg in_c;
    wire out_sum;

    or_gate dut (
      .in_a(in_a),
      .in_b(in_b),
      .in_c(in_c),
      .out_sum(out_sum)
    );
    always #5 clk = ~clk;
    initial
    begin
        in_a = 0; in_b = 0; in_c = 0;
        #(`T_CLK *5) in_a = 0; in_b = 0; in_c = 1; 
        #(`T_CLK *5) in_a = 0; in_b = 1; in_c = 0;
        #(`T_CLK *5) in_a = 0; in_b = 1; in_c = 1;
        #(`T_CLK *5) in_a = 1; in_b = 0; in_c = 0; 
        #(`T_CLK *5) in_a = 1; in_b = 0; in_c = 1;
        #(`T_CLK *5) in_a = 1; in_b = 1; in_c = 0;
        #(`T_CLK *5) in_a = 1; in_b = 1; in_c = 1;
        #(`T_CLK *5) $stop;
    end

endmodule