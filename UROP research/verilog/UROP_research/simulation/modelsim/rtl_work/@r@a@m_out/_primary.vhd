library verilog;
use verilog.vl_types.all;
entity RAM_out is
    port(
        address         : in     vl_logic_vector(9 downto 0);
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(1 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(1 downto 0)
    );
end RAM_out;
