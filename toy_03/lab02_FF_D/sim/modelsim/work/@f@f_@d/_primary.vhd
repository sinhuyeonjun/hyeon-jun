library verilog;
use verilog.vl_types.all;
entity FF_D is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic;
        \out\           : out    vl_logic
    );
end FF_D;
