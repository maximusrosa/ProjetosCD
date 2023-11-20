library verilog;
use verilog.vl_types.all;
entity mbr_div_freq_1b is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic
    );
end mbr_div_freq_1b;
