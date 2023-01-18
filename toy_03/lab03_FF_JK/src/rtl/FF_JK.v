module FF_JK(
  in_a,
  in_b,
  clk,
  out_a,
  out_b
);

input in_a;
input in_b;
input clk;
output reg out_a;
output out_b;

assign out_b = ~(out_a);

always@( posedge clk)
begin
  case({in_a, in_b})
    2'b00 : out_a <= out_a;
    2'b01 : out_a <= 1'b0;
    2'b10 : out_a <= 1'b1;
    2'b11 : out_a <= out_b;
    default  out_a = 1'b0;
  endcase
end
endmodule