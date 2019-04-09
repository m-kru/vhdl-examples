library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity adder is
  port (
    clk   : in  std_logic;
    en    : in  std_logic;
    slv_0 : in  std_logic_vector(31 downto 0);
    slv_1 : in  std_logic_vector(31 downto 0);
    slv_2 : in  std_logic_vector(31 downto 0);
    slv_3 : in  std_logic_vector(31 downto 0);
    un    : in  unsigned(31 downto 0);
    sum   : out unsigned(31 downto 0)
  );
end adder;

architecture rtl of adder is

begin

  process(clk)
  begin
    if rising_edge(clk) then
      if en = '1' then
        sum <= unsigned(slv_0) +
               unsigned(slv_1) +
               unsigned(slv_2) +
               unsigned(slv_3) +
               un;
      else
        sum <= (others => '0');
      end if;
    end if;
  end process;

end rtl;
