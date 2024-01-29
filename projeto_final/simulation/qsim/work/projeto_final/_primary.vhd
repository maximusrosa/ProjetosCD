library verilog;
use verilog.vl_types.all;
entity projeto_final is
    port(
        c_out           : out    vl_logic;
        c0              : in     vl_logic;
        Y               : in     vl_logic_vector(3 downto 0);
        X               : in     vl_logic_vector(3 downto 0);
        c1              : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end projeto_final;
