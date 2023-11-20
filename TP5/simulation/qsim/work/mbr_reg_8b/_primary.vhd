library verilog;
use verilog.vl_types.all;
entity mbr_reg_8b is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic
    );
end mbr_reg_8b;
