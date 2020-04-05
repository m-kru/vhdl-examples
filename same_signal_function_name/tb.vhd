library ieee;
  use ieee.std_logic_1164.all;

library work;
  use work.my_pkg.all;

entity tb is
end entity tb;

architecture arch of tb is

  constant CLK_PERIOD : time := 10 ns;
  signal clk : std_logic := '0';

  signal my_record : t_my_record;

begin

  clk <= not clk after CLK_PERIOD/2;

  main : process
  begin
    wait for CLK_PERIOD;
    my_record <= my_record("0101", 4, '0');

    wait for CLK_PERIOD;
    my_record <= my_record("0110", 5, '1');

    wait for CLK_PERIOD;
    std.env.finish;
  end process main;

end architecture arch;
