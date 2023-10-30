library verilog;
use verilog.vl_types.all;
entity mbr_mux8x1_8b is
    port(
        Y               : out    vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(2 downto 0)
    );
end mbr_mux8x1_8b;
