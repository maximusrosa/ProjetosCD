library verilog;
use verilog.vl_types.all;
entity mbr_bloco_arit_4b is
    port(
        S               : out    vl_logic_vector(3 downto 0);
        c0              : in     vl_logic;
        B               : in     vl_logic_vector(3 downto 0)
    );
end mbr_bloco_arit_4b;
