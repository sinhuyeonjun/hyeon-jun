module multiplexer(
    in_0,
    in_1,
    in_2,
    in_3,
    inx_4,
    inx_5,
    out
);

input in_0;
input in_1;
input in_2;
input in_3;
input inx_4;
input inx_5;
output reg out;

always@(*)
    if({inx_4, inx_5} == 2'b00)
        out = in_0;
    else if({inx_4, inx_5} == 2'b01)
        out = in_1;
    else if({inx_4, inx_5} == 2'b10)
        out = in_2;
    else if({inx_4, inx_5} == 2'b11)
        out = in_3;
    else
        out = 2'b00;

endmodule