module FF_SR(
  clk,
  n_rst,
  in_a,
  in_b,
  out_a,
  out_b
);

input clk;
input n_rst;
input in_a;
input in_b;
output reg out_a;
output out_b;

assign out_b = ~(out_a);

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    out_a <= 0;
  else if(in_a ==0 && in_b ==1)
    out_a <= 1'b0;
  else if(in_a==1 && in_b==0)
    out_a <= 1'b1;
  else
    out_a <= 1'bx;
end

/*
always@(posedge clk or negedge n_rst)
begin
  case({in_a, in_b})
    2'b00 : out_a <= out_a;
    2'b01 : out_a <= 1'b0;
    2'b10 : out_a <= 1'b1;
    2'b11 : out_a <= 1'bx; 
    default out_a <= 1'b1;
  endcase
end
*/
  

endmodule 