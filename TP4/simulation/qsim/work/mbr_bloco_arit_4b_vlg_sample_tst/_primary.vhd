library verilog;
use verilog.vl_types.all;
entity mbr_bloco_arit_4b_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_bloco_arit_4b_vlg_sample_tst;
