library verilog;
use verilog.vl_types.all;
entity neander_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        zera            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end neander_vlg_sample_tst;
