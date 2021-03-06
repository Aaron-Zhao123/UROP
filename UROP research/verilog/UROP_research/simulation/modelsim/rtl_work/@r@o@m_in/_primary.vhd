library verilog;
use verilog.vl_types.all;
entity ROM_in is
    port(
        address         : in     vl_logic_vector(9 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end ROM_in;
