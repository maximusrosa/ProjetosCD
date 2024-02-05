library verilog;
use verilog.vl_types.all;
entity projeto_final_vlg_check_tst is
    port(
        B               : in     vl_logic;
        C               : in     vl_logic;
        N               : in     vl_logic;
        s_cont          : in     vl_logic_vector(3 downto 0);
        s_ula           : in     vl_logic_vector(3 downto 0);
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end projeto_final_vlg_check_tst;
