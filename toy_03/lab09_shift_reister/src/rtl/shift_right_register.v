module shift_right_register(
  clk,
  n_rst,
  out
);

input clk;
input n_rst;
output reg [7:0] out;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    out <= 8'b0010_1100;
  else 
    out <= {1'b0, out[5:1]};
end

endmodule 