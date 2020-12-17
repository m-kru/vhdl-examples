library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity adder is
   port (
      clk : in std_logic;
      a : in unsigned(7 downto 0);
      b : in unsigned(7 downto 0);
      c : out unsigned(7 downto 0)
   );
end entity;

architecture rtl of adder is

begin

   process (clk) is
   begin
      if rising_edge(clk) then
         c <= a + b;
      end if;
   end process;

end architecture;
