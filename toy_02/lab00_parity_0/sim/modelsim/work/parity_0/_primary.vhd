library verilog;
use verilog.vl_types.all;
entity parity_0 is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_c            : in     vl_logic;
        in_d            : in     vl_logic;
        out_sum         : out    vl_logic
    );
end parity_0;
