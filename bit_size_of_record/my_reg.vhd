library ieee;
use ieee.std_logic_1164.all;

entity my_reg is
  generic (WIDTH : positive := 8);
  port (
    clk : in  std_logic;
    d   : in  std_logic_vector(WIDTH-1 downto 0);
    q   : out std_logic_vector(WIDTH-1 downto 0)
  );
end my_reg;

architecture rtl of my_reg is
begin

  process(clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end process;

end rtl;
