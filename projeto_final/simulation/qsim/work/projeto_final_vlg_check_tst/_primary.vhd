library verilog;
use verilog.vl_types.all;
entity projeto_final_vlg_check_tst is
    port(
        c_out           : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end projeto_final_vlg_check_tst;
