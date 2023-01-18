library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        \out\           : out    vl_logic_vector(5 downto 0)
    );
end \register\;
