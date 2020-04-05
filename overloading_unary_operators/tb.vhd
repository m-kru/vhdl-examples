library ieee;
  use ieee.std_logic_1164.all;

library work;
  use work.my_pkg.all;

entity tb is
end entity tb;

architecture arch of tb is

  constant CLK_PERIOD : time := 10 ns;
  signal clk : std_logic := '0';

  signal frame   : t_frame := "10000000000000000001";
  signal frame_x : t_frame_x;
  signal frame_y : t_frame_y;

begin

  clk <= not clk after CLK_PERIOD/2;

  main : process
  begin
    wait for CLK_PERIOD;
    frame_x <= +frame;

    wait for CLK_PERIOD;
    frame_y <= +frame;

    wait for CLK_PERIOD;
    frame <= -frame_x;

    wait for CLK_PERIOD;
    frame <= -frame_y;

    wait for CLK_PERIOD;
    std.env.finish;
  end process main;

end architecture arch;
