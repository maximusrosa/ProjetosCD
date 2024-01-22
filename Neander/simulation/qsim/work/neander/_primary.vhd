library verilog;
use verilog.vl_types.all;
entity neander is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        zera            : in     vl_logic
    );
end neander;
