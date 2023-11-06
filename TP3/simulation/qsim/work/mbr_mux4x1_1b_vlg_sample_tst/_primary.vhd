library verilog;
use verilog.vl_types.all;
entity mbr_mux4x1_1b_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(1 downto 0);
        e0              : in     vl_logic;
        e1              : in     vl_logic;
        e2              : in     vl_logic;
        e3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_mux4x1_1b_vlg_sample_tst;
