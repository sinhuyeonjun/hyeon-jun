library verilog;
use verilog.vl_types.all;
entity mealy is
    generic(
        s0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        s1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        s2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        s3              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        s4              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 1;
    attribute mti_svvh_generic_type of s1 : constant is 1;
    attribute mti_svvh_generic_type of s2 : constant is 1;
    attribute mti_svvh_generic_type of s3 : constant is 1;
    attribute mti_svvh_generic_type of s4 : constant is 1;
end mealy;
