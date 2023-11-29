library verilog;
use verilog.vl_types.all;
entity mbr_cont_n_bits_vlg_check_tst is
    port(
        b               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end mbr_cont_n_bits_vlg_check_tst;
