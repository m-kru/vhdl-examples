library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.my_pkg.all;

entity tb is
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD : time := 10 ns;
    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';

    signal s_d : t_my_record;
    signal s_q : t_my_record;

begin

    clk <= not clk after CLK_PERIOD/2;

    my_reg_1 : entity work.my_reg
    generic map (WIDTH => my_rec_2_slv(s_d)'length)
    port map (
        clk => clk,
        d   => my_rec_2_slv(s_d),
        slv_2_my_rec(q)   => s_q
    );

    main: process
    begin
        wait for 2 * CLK_PERIOD;

        -- Testbench code here.

        wait for 2 * CLK_PERIOD;

        std.env.stop;

    end process;
end;
