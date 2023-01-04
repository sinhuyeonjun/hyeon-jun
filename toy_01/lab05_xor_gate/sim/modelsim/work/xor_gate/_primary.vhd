library verilog;
use verilog.vl_types.all;
entity xor_gate is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        out_sum         : out    vl_logic
    );
end xor_gate;
