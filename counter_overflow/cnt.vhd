library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity cnt is
    generic (
        LEN : positive
    );
    port (
        clk   : in std_logic;
        reset : in std_logic;
        value : out std_logic_vector(LEN downto 0)
    );
end cnt;

architecture rtl of cnt is

begin

    process (clk) is
        variable value_cnt : unsigned(LEN downto 0) := (others => '0');
    begin
        if rising_edge(clk) then
            if reset = '1' then
                value <= (others => '0');
                value_cnt := (others => '0');
            else
                value <= std_logic_vector(value_cnt);
                value_cnt := value_cnt + 1;
            end if;
        end if;
    end process;

end rtl;
