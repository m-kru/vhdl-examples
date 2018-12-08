library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s is
    port (
        clk: in std_logic;
        a: in signed(2 downto 0);
        b: in signed(2 downto 0);
        c: out signed(3 downto 0)
    );
end entity;

architecture behav of s is

begin
    process (clk)
    begin
        if rising_edge(clk) then
            c <= resize(a, c'length) + resize(b, c'length);
        end if;
    end process;
end;
