library verilog;
use verilog.vl_types.all;
entity mbr_div_freq_5b_vlg_sample_tst is
    port(
        CK              : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_div_freq_5b_vlg_sample_tst;
