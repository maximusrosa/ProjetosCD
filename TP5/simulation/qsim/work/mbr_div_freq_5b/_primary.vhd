library verilog;
use verilog.vl_types.all;
entity mbr_div_freq_5b is
    port(
        Q               : out    vl_logic_vector(0 to 4);
        CK              : in     vl_logic;
        RST             : in     vl_logic
    );
end mbr_div_freq_5b;
