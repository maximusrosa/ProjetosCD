library verilog;
use verilog.vl_types.all;
entity teste_mux8x1_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(2 downto 0);
        e               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end teste_mux8x1_vlg_sample_tst;
