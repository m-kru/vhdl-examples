library ieee;
  use ieee.std_logic_1164.all;

library work;
  use work.pkg.all;

entity tb is
end entity tb;

architecture arch of tb is

  constant CLK_PERIOD : time := 10 ns;
  signal clk : std_logic := '0';

  signal foo : foo;

begin

  clk <= not clk after CLK_PERIOD/2;

  main : process
  begin
    wait for CLK_PERIOD;
    foo <= "0000";

    wait for CLK_PERIOD;
    foo <= "1111";

    wait for CLK_PERIOD;
    std.env.finish;
  end process main;

end architecture arch;
