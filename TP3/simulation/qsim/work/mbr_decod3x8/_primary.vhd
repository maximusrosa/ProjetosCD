library verilog;
use verilog.vl_types.all;
entity mbr_decod3x8 is
    port(
        s0              : out    vl_logic;
        e               : in     vl_logic_vector(2 downto 0);
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic;
        s7              : out    vl_logic
    );
end mbr_decod3x8;
