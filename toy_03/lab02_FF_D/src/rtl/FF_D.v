module FF_D(
  clk,
  n_rst,
  in_a,
  out
);

input clk;
input n_rst;
input in_a;
output reg out;

always@( posedge clk)
begin
  if(n_rst == 1)
    out <= 0;
  else
    out <= in_a; 
end
endmodule