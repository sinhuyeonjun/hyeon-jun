module counter_johnson(
  clk,
  n_rst,
  out
);

input clk;
input n_rst;
output reg [2:0] out;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    out <= 3'b000;
  else 
  begin
    out[2] <= ~out[0];
    out[1] <= out[2];
    out[0] <= out[1];
    //out <= out[3:1];
    //out[2] <= 1'b1;
  end
end

endmodule
