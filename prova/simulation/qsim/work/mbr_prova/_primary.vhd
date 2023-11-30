library verilog;
use verilog.vl_types.all;
entity mbr_prova is
    port(
        cout            : out    vl_logic;
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0);
        c               : in     vl_logic_vector(2 downto 0)
    );
end mbr_prova;
