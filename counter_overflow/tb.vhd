library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
    generic (
        CNT_LEN : positive := 2
    );
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD: time := 10 ns;
    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';
    signal value : std_logic_vector(CNT_LEN downto 0);

begin

    clk <= not clk after CLK_PERIOD/2;

    cnt_0 : entity work.cnt
    generic map (
        LEN  => CNT_LEN
    )
    port map (
        clk  => clk,
        reset  => reset,
        value  => value
    );

    main: process
    begin
        wait for 20 * CLK_PERIOD;
        reset <= '1';
        wait for CLK_PERIOD;
        reset <= '0';
        wait for 10 * CLK_PERIOD;

        report "End of simulation" severity failure;

    end process;
end;
