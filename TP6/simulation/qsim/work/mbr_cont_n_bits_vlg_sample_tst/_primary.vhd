library verilog;
use verilog.vl_types.all;
entity mbr_cont_n_bits_vlg_sample_tst is
    port(
        C               : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(3 downto 0);
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_cont_n_bits_vlg_sample_tst;
