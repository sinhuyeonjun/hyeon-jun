module counter_gray(
  clk,
  n_rst,
  in_a,
  out
);

input clk;
input n_rst;
input [2:0] in_a;
output reg [2:0] out;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    out <= 3'b000;

  else 
    out[2] <= in_a[2];
    out[1] <= in_a[2] ^ in_a[1];
    out[0] <= in_a[1] ^ in_a[0];


end


endmodule 