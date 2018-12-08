library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uns is
    port (
        clk: in std_logic;
        a: in unsigned(2 downto 0);
        b: in unsigned(2 downto 0);
        c: out unsigned(3 downto 0)
    );
end entity;

architecture behav of uns is

begin
    process (clk)
    begin
        if rising_edge(clk) then
            c <= resize(a, c'length) + resize(b, c'length);
        end if;
    end process;
end;
