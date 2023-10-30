library verilog;
use verilog.vl_types.all;
entity mbr_mux4x1_1b_vlg_sample_tst is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        d               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_mux4x1_1b_vlg_sample_tst;
