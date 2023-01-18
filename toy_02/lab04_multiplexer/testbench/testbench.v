`timescale 1ns/1ps
`define T_CLK 10
module testbench();

reg in_0;
reg in_1;
reg in_2;
reg in_3;
reg inx_4;
reg inx_5;
wire out;

multiplexer dut(
    .in_0(in_0),
    .in_1(in_1),
    .in_2(in_2),
    .in_3(in_3),
    .inx_4(inx_4),
    .inx_5(inx_5),
    .out(out)
);

initial 
begin
    in_0 = 0; in_1 = 1; in_2 = 0; in_3 = 1; inx_4 = 0; inx_5 = 0;
    #(`T_CLK *5) in_0 = 0; in_1 = 1; in_2 = 0; in_3 = 1; inx_4 = 0; inx_5 = 1; 
    #(`T_CLK *5) in_0 = 0; in_1 = 1; in_2 = 0; in_3 = 1; inx_4 = 1; inx_5 = 0;
    #(`T_CLK *5) in_0 = 0; in_1 = 1; in_2 = 0; in_3 = 1; inx_4 = 1; inx_5 = 1;
    #(`T_CLK *5) $stop;  
end
endmodule
