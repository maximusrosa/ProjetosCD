library verilog;
use verilog.vl_types.all;
entity mbr_cont_n_bits is
    port(
        b               : out    vl_logic_vector(3 downto 0);
        D               : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        C               : in     vl_logic_vector(1 downto 0)
    );
end mbr_cont_n_bits;
