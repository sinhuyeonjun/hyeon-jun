`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg clk;
reg n_rst;
reg [2:0] in_a;
wire [2:0] out;

counter_gray dut(
    .clk(clk),
    .in_a(in_a),
    .n_rst(n_rst),
    .out(out)
);
/*
always #5 clk = ~clk;

initial begin
    clk = 0; n_rst = 0;
    #(`T_CLK *0.7) n_rst = 1;
    #(`T_CLK *10) $stop;
end
*/

always #5 clk = ~clk;

initial begin
    clk=0; n_rst = 0; in_a = 3'b000;
    #(`T_CLK *0.7) n_rst = 1; in_a = 3'b001;
    #(`T_CLK *0.7) in_a = 3'b010;
    #(`T_CLK *0.7) in_a = 3'b011;
    #(`T_CLK *0.7) in_a = 3'b100;
    #(`T_CLK *0.7) in_a = 3'b101;
    #(`T_CLK *0.7) in_a = 3'b110;
    #(`T_CLK *0.7) in_a = 3'b111;

end

endmodule