library verilog;
use verilog.vl_types.all;
entity mbr_mux4x1_1b is
    port(
        X               : out    vl_logic;
        e0              : in     vl_logic;
        c               : in     vl_logic_vector(1 downto 0);
        e1              : in     vl_logic;
        e2              : in     vl_logic;
        e3              : in     vl_logic
    );
end mbr_mux4x1_1b;
