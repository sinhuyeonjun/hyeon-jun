`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg clk;
reg n_rst;
reg din;
wire dout;

moore dut(
    .clk(clk),
    .n_rst(n_rst),
    .din(din),
    .dout(dout)
);

always #10 clk = ~clk;
/*
initial begin
    //010
    clk = 0; n_rst = 0; din = 0;
    #(`T_CLK *0.7) n_rst = 1; din = 0;
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) din = 0;
    //011
    #(`T_CLK *5) din = 0;
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) din = 1;
    //000
    #(`T_CLK *5) din = 0;
    #(`T_CLK *5) din = 0;
    #(`T_CLK *5) din = 0;
    //100
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) din = 0; 
    #(`T_CLK *5) din = 0;
    //111
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) din = 1;
    #(`T_CLK *5) $stop;
end
*/

initial begin
    din = 1'b0;  clk = 0; n_rst = 0;
    #(`T_CLK*0.7) n_rst = 1; din = 1'b0; //1st
    #(`T_CLK)     din = 1'b0;
    #(`T_CLK)     din = 1'b1; 
    #(`T_CLK)     din = 1'b1; // 2nd
    #(`T_CLK)     din = 1'b1;
    #(`T_CLK)     din = 1'b0;
    #(`T_CLK)     din = 1'b0; // 3rd
    #(`T_CLK)     din = 1'b1;
    #(`T_CLK)     din = 1'b1;
    #(`T_CLK)     din = 1'b0; // 4th
    #(`T_CLK)     din = 1'b0;
    #(`T_CLK)     din = 1'b0;
    #(`T_CLK*3)   $stop;
end

endmodule

