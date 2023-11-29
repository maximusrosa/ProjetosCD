library verilog;
use verilog.vl_types.all;
entity mbr_prova is
    port(
        S               : out    vl_logic;
        e0              : in     vl_logic;
        e1              : in     vl_logic;
        e2              : in     vl_logic;
        e3              : in     vl_logic;
        e4              : in     vl_logic;
        e5              : in     vl_logic;
        e6              : in     vl_logic;
        e7              : in     vl_logic;
        c               : in     vl_logic_vector(2 downto 0)
    );
end mbr_prova;
