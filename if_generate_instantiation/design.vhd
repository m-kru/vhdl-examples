library ieee;
  use ieee.std_logic_1164.all;

entity design is
    port (
        clk : in std_logic;
        a_i : in std_logic;
        b_i : in std_logic;
        c_o : out std_logic;
        d_o : out std_logic
    );
end design;

architecture rtl of design is

begin

    process(clk)
    begin
        if rising_edge(clk) then
            c_o <= a_i xor b_i;
            d_o <= a_i and b_i;
        end if;
    end process;
end rtl;
