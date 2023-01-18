library verilog;
use verilog.vl_types.all;
entity demultiplexer is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_0            : in     vl_logic;
        out_0           : out    vl_logic;
        out_1           : out    vl_logic;
        out_2           : out    vl_logic;
        out_3           : out    vl_logic
    );
end demultiplexer;
