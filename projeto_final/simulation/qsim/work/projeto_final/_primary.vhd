library verilog;
use verilog.vl_types.all;
entity projeto_final is
    port(
        N               : out    vl_logic;
        s               : out    vl_logic_vector(3 downto 0);
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        op              : in     vl_logic_vector(2 downto 0);
        Z               : out    vl_logic;
        B               : out    vl_logic;
        V               : out    vl_logic;
        C               : out    vl_logic
    );
end projeto_final;
