library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

library lib1;

entity tb_adders is
end entity;

architecture tb of tb_adders is

   alias lib_alias is lib1;

   constant CLK_PERIOD : time := 10 ns;
   signal clk : std_logic := '0';

   signal a : unsigned(7 downto 0) := (others => '0');
   signal b : unsigned(7 downto 0) := (others => '0');

   signal c1 : unsigned(7 downto 0);

begin

   clk <= not clk after CLK_PERIOD / 2;

   adder1 : entity lib_alias.adder
   port map (
      clk => clk,
      a => a,
      b => b,
      c => c1
   );


   main : process
   begin
      wait for 5 * CLK_PERIOD;
      std.env.finish;
   end process;

end architecture;
