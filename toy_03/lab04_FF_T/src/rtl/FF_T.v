module FF_T(
  clk,
  in_a,
  n_rst,
  out
);

input clk;
input n_rst;
input in_a;
output reg out;

always@( posedge clk or negedge n_rst)
begin
    if(in_a == 0)
      out <= 1;
    else 
      out <= 0;
end
//initial out <= 0;

//always@( posedge clk or negedge n_rst)
//begin
//  if(!n_rst)
//    out <= 0;
//  else
//    out <= ~out;
//end
endmodule 