library verilog;
use verilog.vl_types.all;
entity parity_03 is
    port(
        in_b            : in     vl_logic;
        in_c            : in     vl_logic;
        in_d            : in     vl_logic;
        out_sum         : out    vl_logic
    );
end parity_03;
