library verilog;
use verilog.vl_types.all;
entity shift_left_register is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end shift_left_register;
