library verilog;
use verilog.vl_types.all;
entity FA_4bit is
    port(
        in_a            : in     vl_logic_vector(3 downto 0);
        in_b            : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        c_out           : out    vl_logic
    );
end FA_4bit;
