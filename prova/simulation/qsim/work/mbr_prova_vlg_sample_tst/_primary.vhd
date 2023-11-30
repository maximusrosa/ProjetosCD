library verilog;
use verilog.vl_types.all;
entity mbr_prova_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mbr_prova_vlg_sample_tst;
