library verilog;
use verilog.vl_types.all;
entity mbr_decod3x8 is
    port(
        s0              : out    vl_logic;
        e2              : in     vl_logic;
        e1              : in     vl_logic;
        e0              : in     vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic;
        s7              : out    vl_logic
    );
end mbr_decod3x8;
