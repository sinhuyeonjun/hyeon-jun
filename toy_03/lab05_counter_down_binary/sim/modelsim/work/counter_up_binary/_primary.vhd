library verilog;
use verilog.vl_types.all;
entity counter_up_binary is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end counter_up_binary;
