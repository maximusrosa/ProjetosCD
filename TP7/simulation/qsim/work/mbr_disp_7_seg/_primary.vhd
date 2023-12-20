library verilog;
use verilog.vl_types.all;
entity mbr_disp_7_seg is
    port(
        s6              : out    vl_logic;
        e               : in     vl_logic_vector(3 downto 0)
    );
end mbr_disp_7_seg;
