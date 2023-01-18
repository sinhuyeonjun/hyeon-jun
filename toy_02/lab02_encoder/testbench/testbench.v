`timescale 1ns/1ps
`define T_CLK 10
module testbench();
    reg clk;
    reg in_0;
    reg in_1;
    reg in_2;
    reg in_3;
    reg in_4;
    reg in_5;
    reg in_6;
    reg in_7;
    wire out_a;
    wire out_b;
    wire out_c;

    encoder dut (
      .in_0(in_0),
      .in_1(in_1),
      .in_2(in_2),
      .in_3(in_3),
      .in_4(in_4),
      .in_5(in_5),
      .in_6(in_6),
      .in_7(in_7),
      .out_a(out_a),
      .out_b(out_b),
      .out_c(out_c)
    );

    always #5 clk = ~clk;
    initial
    begin
        in_0 = 1; in_1 =0; in_2 = 0; in_3 = 0; in_4 = 0; in_5 = 0; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =1; in_2 = 0; in_3 = 0; in_4 = 0; in_5 = 0; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 1; in_3 = 0; in_4 = 0; in_5 = 0; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 0; in_3 = 1; in_4 = 0; in_5 = 0; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 0; in_3 = 0; in_4 = 1; in_5 = 0; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 0; in_3 = 0; in_4 = 0; in_5 = 1; in_6 = 0; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 0; in_3 = 0; in_4 = 0; in_5 = 0; in_6 = 1; in_7 =0;
        #(`T_CLK *5) in_0 = 0; in_1 =0; in_2 = 0; in_3 = 0; in_4 = 0; in_5 = 0; in_6 = 0; in_7 =1;
        #(`T_CLK *5) $stop;
    end

endmodule
