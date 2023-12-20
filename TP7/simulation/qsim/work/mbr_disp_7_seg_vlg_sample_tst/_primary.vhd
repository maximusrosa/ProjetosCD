library verilog;
use verilog.vl_types.all;
entity mbr_disp_7_seg_vlg_sample_tst is
    port(
        e               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mbr_disp_7_seg_vlg_sample_tst;
