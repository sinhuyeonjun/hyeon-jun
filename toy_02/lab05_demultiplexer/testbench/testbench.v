`timescale 1ns/1ps
`define T_CLK 10
module testbench();
reg in_a;
reg in_b;
reg in_0;
wire out_0;
wire out_1;
wire out_2;
wire out_3;

demultiplexer dut(
    .in_a(in_a),
    .in_b(in_b),
    .in_0(in_0),
    .out_0(out_0),
    .out_1(out_1),
    .out_2(out_2),
    .out_3(out_3)
);

initial 
begin
    in_a = 0; in_b = 0; in_0 = 1;
    #(`T_CLK *5) in_a = 0; in_b = 1;
    #(`T_CLK *5) in_a = 1; in_b = 0;
    #(`T_CLK *5) in_a = 1; in_b = 1;
    #(`T_CLK *5) $stop;  
end
endmodule