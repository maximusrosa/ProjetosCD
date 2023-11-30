library verilog;
use verilog.vl_types.all;
entity teste_mux8x1 is
    port(
        pin_name1       : out    vl_logic;
        e               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(2 downto 0)
    );
end teste_mux8x1;
