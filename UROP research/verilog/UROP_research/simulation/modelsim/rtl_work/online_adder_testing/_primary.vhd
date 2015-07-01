library verilog;
use verilog.vl_types.all;
entity online_adder_testing is
    port(
        clk             : in     vl_logic;
        data_out        : out    vl_logic_vector(1 downto 0);
        data_in         : out    vl_logic_vector(3 downto 0)
    );
end online_adder_testing;
