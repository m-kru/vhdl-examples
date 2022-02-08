library ieee;
use ieee.std_logic_1164.all;

package my_pkg is

  type t_my_record is record
    a : std_logic_vector(0 downto 0);
    b : std_logic_vector(0 downto 0);
    c : std_logic_vector(3 downto 0);
  end record;

  function to_slv(x : t_my_record) return std_logic_vector;
  function to_my_rec(x : std_logic_vector) return t_my_record;

end my_pkg;

package body my_pkg is

  function to_slv(x : t_my_record) return std_logic_vector is
    variable var : std_logic_vector(5 downto 0);
  begin
    var(0 downto 0) := std_logic_vector(x.a);
    var(1 downto 1) := std_logic_vector(x.b);
    var(5 downto 2) := std_logic_vector(x.c);

    return var;
  end function;

  function to_my_rec(x : std_logic_vector) return t_my_record is
    variable var : t_my_record;
  begin
    var.a := x(0 downto 0);
    var.b := x(1 downto 1);
    var.c := x(5 downto 2);

    return var;
  end function;

end my_pkg;
