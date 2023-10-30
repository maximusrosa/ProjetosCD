library verilog;
use verilog.vl_types.all;
entity mbr_mux2x1_1b_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        e0              : in     vl_logic;
        e1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_mux2x1_1b_vlg_sample_tst;
