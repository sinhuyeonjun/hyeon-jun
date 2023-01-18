`timescale 1ns/1ps
`define T_CLK 10
module testbench();

reg [2:0] in;
wire [7:0] out;

decoder dut(
    .in(in),
    .out(out)
);

initial 
begin
    in = 3'b000;
    #(`T_CLK *5) in = 3'b001;
    #(`T_CLK *5) in = 3'b010;
    #(`T_CLK *5) in = 3'b011;
    #(`T_CLK *5) in = 3'b100;
    #(`T_CLK *5) in = 3'b101;
    #(`T_CLK *5) in = 3'b110;
    #(`T_CLK *5) in = 3'b111;
    #(`T_CLK *5) $stop;
end
endmodule