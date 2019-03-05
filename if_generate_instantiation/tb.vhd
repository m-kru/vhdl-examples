library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tb is
    generic (
        USE_D_OUTPUT : boolean := false
    );
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD : time := 10 ns;
    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';

    signal a : std_logic := '0';
    signal b : std_logic := '1';
    signal c_0 : std_logic;
    signal d_0 : std_logic;
--    signal c_1 : std_logic;
--    signal d_1 : std_logic;
begin

    clk <= not clk after CLK_PERIOD/2;

generate_label_0: if USE_D_OUTPUT generate
    design_0 : entity work.design
    port map (
        clk  => clk,
        a_i  => a,
        b_i  => b,
        c_o  => c_0,
        d_o  => d_0
    );
else generate
    design_0 : entity work.design
    port map (
        clk  => clk,
        a_i  => a,
        b_i  => b,
        c_o  => c_0,
        d_o  => open
    );
end generate generate_label_0;


--    design_0 : entity work.design
--    port map (
--        clk  => clk,
--       a_i  => a,
--        b_i  => b,
--        c_o  => c_1,
--generate_label_1: if USE_D_OUTPUT generate
--        d_o  => d_1
--else generate
--        d_o  => open
--end generate generate_label_1;
--    );

    main: process
    begin
        wait for 2 * CLK_PERIOD;

        -- Testbench code here.

        wait for 2 * CLK_PERIOD;

        report "End of simulation" severity failure;

    end process;
end;
