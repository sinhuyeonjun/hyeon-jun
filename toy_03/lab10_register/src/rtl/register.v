module register(
  clk,
  n_rst,
  out
);

input clk;
input n_rst;
output reg [5:0] out;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    out <= 6'b11_1111;
  else 
  begin
    out[0] <= out[1];
    out[1] <= out[2];
    out[2] <= out[3];
    out[3] <= out[4];
    out[4] <= out[5];
    out[5] <= 1'b0;
  end
end
endmodule 