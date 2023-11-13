library verilog;
use verilog.vl_types.all;
entity mbr_bloco_arit_4b is
    port(
        c_out           : out    vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end mbr_bloco_arit_4b;
