library verilog;
use verilog.vl_types.all;
entity mbr_reg_8b_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_reg_8b_vlg_sample_tst;
