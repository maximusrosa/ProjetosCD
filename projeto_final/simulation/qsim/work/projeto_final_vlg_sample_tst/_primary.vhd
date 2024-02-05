library verilog;
use verilog.vl_types.all;
entity projeto_final_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        ck_man          : in     vl_logic;
        ctrl_mux        : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        op_code         : in     vl_logic_vector(2 downto 0);
        rst             : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end projeto_final_vlg_sample_tst;
