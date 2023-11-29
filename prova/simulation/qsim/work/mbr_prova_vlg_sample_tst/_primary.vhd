library verilog;
use verilog.vl_types.all;
entity mbr_prova_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(2 downto 0);
        e0              : in     vl_logic;
        e1              : in     vl_logic;
        e2              : in     vl_logic;
        e3              : in     vl_logic;
        e4              : in     vl_logic;
        e5              : in     vl_logic;
        e6              : in     vl_logic;
        e7              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mbr_prova_vlg_sample_tst;
