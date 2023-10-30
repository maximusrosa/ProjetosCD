library verilog;
use verilog.vl_types.all;
entity mbr_mux8x1_8b_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end mbr_mux8x1_8b_vlg_sample_tst;
