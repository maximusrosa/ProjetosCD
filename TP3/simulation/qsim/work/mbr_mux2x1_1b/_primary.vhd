library verilog;
use verilog.vl_types.all;
entity mbr_mux2x1_1b is
    port(
        s               : out    vl_logic;
        c               : in     vl_logic;
        e1              : in     vl_logic;
        e0              : in     vl_logic
    );
end mbr_mux2x1_1b;
