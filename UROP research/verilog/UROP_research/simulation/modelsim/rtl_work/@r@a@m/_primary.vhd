library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        rdaddress       : in     vl_logic_vector(9 downto 0);
        wraddress       : in     vl_logic_vector(9 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end RAM;
