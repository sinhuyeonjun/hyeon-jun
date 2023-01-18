module counter_up_binary(
  clk,
  n_rst,
  out
);

input clk;
input n_rst;
output reg [2:0] out;

always@( posedge clk or negedge n_rst)
begin
    if(!n_rst)
        out <= 3'b000;
    else
        out <= out -1;
end
endmodule