library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD: time := 10 ns;
    signal clk: std_logic := '0';

    signal a: std_logic_vector(2 downto 0) := "000";
    signal b: std_logic_vector(2 downto 0) := "000";
    signal c_uns: unsigned(3 downto 0);
    signal c_s: signed(3 downto 0);

begin

    clk <= not clk after CLK_PERIOD/2;

    uns_inst: entity work.uns
        port map (
            clk => clk,
            a => unsigned(a),
            b => unsigned(b),
            c => c_uns
        );

    s_inst: entity work.s
        port map (
            clk => clk,
            a => signed(a),
            b => signed(b),
            c => c_s
        );

    main: process
    begin
        wait for 2 * CLK_PERIOD;

        for i in 1 to 2**a'length - 1 loop
            a <= std_logic_vector(unsigned(a) + 1);
            wait for CLK_PERIOD;
        end loop;

        for i in 1 to 2**b'length - 1 loop
            b <= std_logic_vector(unsigned(b) + 1);
            wait for CLK_PERIOD;
        end loop;

        wait for 2 * CLK_PERIOD;

        report "End of simulation" severity failure;

    end process;
end;
