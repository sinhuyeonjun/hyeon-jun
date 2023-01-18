library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_c            : in     vl_logic;
        c_out           : out    vl_logic;
        sum             : out    vl_logic
    );
end full_adder;
