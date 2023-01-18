library verilog;
use verilog.vl_types.all;
entity FF_JK is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        clk             : in     vl_logic;
        out_a           : out    vl_logic;
        out_b           : out    vl_logic
    );
end FF_JK;
