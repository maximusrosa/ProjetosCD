library verilog;
use verilog.vl_types.all;
entity mbr_mux2x1_8b is
    port(
        S               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0)
    );
end mbr_mux2x1_8b;
