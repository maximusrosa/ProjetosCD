library verilog;
use verilog.vl_types.all;
entity mbr_reg_1b_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        EN              : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_reg_1b_vlg_sample_tst;
