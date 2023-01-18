module shift_left_register(
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
    out <=  out << 1;
end

endmodule 