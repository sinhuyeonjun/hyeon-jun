library verilog;
use verilog.vl_types.all;
entity parity_05 is
    port(
        in_a            : in     vl_logic;
        in_d            : in     vl_logic;
        out_sum         : out    vl_logic
    );
end parity_05;
