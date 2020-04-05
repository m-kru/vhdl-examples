library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

package my_pkg is

  type t_my_record is record
    a : std_logic_vector(3 downto 0);
    b : std_logic_vector(4 downto 0);
    c : std_logic;
  end record t_my_record;

  function my_record (
    constant a : std_logic_vector(3 downto 0);
    constant b : natural;
    constant c : std_logic
  ) return t_my_record;

end package my_pkg;

package body my_pkg is

  function my_record (
    constant a : std_logic_vector(3 downto 0);
    constant b : natural;
    constant c : std_logic
  ) return t_my_record is
    variable ret : t_my_record;
  begin
    ret.a := a;
    ret.b := std_logic_vector(to_unsigned(b, 5));
    ret.c := c;

    return ret;
  end function my_record;

end package body my_pkg;
