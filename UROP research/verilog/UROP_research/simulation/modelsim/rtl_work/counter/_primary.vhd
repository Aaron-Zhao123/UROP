library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        number          : out    vl_logic_vector(9 downto 0);
        \signal\        : out    vl_logic
    );
end counter;
