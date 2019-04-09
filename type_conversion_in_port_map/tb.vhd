library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

library work;
  use work.my_types_pkg.all;

entity tb is
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD : time := 10 ns;
    signal clk : std_logic := '0';

    signal s_my_record : my_record := (
      slv => X"000000F0",
      one_bit => (others => '1')
    );
    signal s_my_subtype : my_subtype := (others => '0');

    signal s_slv_2 : unsigned(31 downto 0) := (others => '0');
    signal s_un : std_logic_vector(31 downto 0) := (others => '0');
    signal s_sum : std_logic_vector(31 downto 0);

begin

    clk <= not clk after CLK_PERIOD/2;

    adder_0 : entity work.adder
    port map (
      clk    => clk,
      en     => s_my_record.one_bit(0),
      slv_0  => s_my_record.slv,
      slv_1  => s_my_subtype,
      slv_2  => std_logic_vector(s_slv_2),
      slv_3  => (others => '0'),
      un     => unsigned(s_un),
      std_logic_vector(sum) => s_sum
    );

    main: process
    begin
      wait for 2 * CLK_PERIOD;

      -- Testbench code here.
      s_slv_2 <= s_slv_2 + 1;

      wait for 2 * CLK_PERIOD;

      std.env.stop;

    end process;
end;
