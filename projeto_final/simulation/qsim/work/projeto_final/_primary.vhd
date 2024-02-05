library verilog;
use verilog.vl_types.all;
entity projeto_final is
    port(
        N               : out    vl_logic;
        op_code         : in     vl_logic_vector(2 downto 0);
        ck              : in     vl_logic;
        rst             : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        d               : in     vl_logic_vector(3 downto 0);
        Z               : out    vl_logic;
        C               : out    vl_logic;
        B               : out    vl_logic;
        V               : out    vl_logic;
        s_cont          : out    vl_logic_vector(3 downto 0);
        s_ula           : out    vl_logic_vector(3 downto 0);
        ctrl_mux        : in     vl_logic;
        ck_man          : in     vl_logic
    );
end projeto_final;
