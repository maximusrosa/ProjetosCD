library verilog;
use verilog.vl_types.all;
entity mbr_reg_1b is
    port(
        Q               : out    vl_logic;
        EN              : in     vl_logic;
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic
    );
end mbr_reg_1b;
