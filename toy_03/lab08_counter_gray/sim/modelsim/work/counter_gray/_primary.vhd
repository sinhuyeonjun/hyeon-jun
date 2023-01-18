library verilog;
use verilog.vl_types.all;
entity counter_gray is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end counter_gray;
