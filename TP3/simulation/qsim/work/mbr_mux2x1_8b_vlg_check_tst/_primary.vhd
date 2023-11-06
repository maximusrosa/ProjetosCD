library verilog;
use verilog.vl_types.all;
entity mbr_mux2x1_8b_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end mbr_mux2x1_8b_vlg_check_tst;
