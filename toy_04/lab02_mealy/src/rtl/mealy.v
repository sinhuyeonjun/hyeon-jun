module mealy(
  clk,
  n_rst,
  din,
  dout
);

input clk;
input n_rst;
input din;
output reg dout;

parameter s0 = 3'h0,
          s1 = 3'h1,
          s2 = 3'h2,
          s3 = 3'h3,
          s4 = 3'h4;
reg [2:0] c_state;
reg [2:0] n_state;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    c_state <= s0;
  else
    c_state <= n_state;
end

always@(c_state or din)
case(c_state)
  s0 : begin
    n_state = (din == 0)? s1 : s3;
    dout = 1'b0;
  end
  s1 : begin 
    n_state = (din == 0)? s4 : s2;
    dout = 1'b0;
  end
  s2 : begin 
    n_state = (din == 0)? s0 : s0;
    dout = (din == 0)? 1'b0 : 1'b1;  
  end
  s3 : begin 
    n_state = (din == 0)? s4 : s4;
    dout = 1'b0;
  end
  s4 : begin 
    n_state = (din == 0)? s0 : s0;
    dout = 1'b0;
  end
  default begin 
    n_state = s0;
    dout = 1'b0;
  end
endcase 
endmodule