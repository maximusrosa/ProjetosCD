library verilog;
use verilog.vl_types.all;
entity mbr_mux2x1_8b_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_mux2x1_8b_vlg_sample_tst;
