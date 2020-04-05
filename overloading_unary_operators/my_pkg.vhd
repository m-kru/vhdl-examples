library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

package my_pkg is

  subtype t_frame is std_logic_vector(19 downto 0);

  type t_frame_x is record
    a : std_logic_vector(1 downto 0);
    b : std_logic_vector(17 downto 0);
  end record t_frame_x;

  type t_frame_y is record
    a : std_logic_vector(9 downto 0);
    b : std_logic_vector(9 downto 0);
  end record t_frame_y;

  function "+" (arg : t_frame) return t_frame_x;
  function "-" (arg : t_frame_x) return t_frame;

  function "+" (arg : t_frame) return t_frame_y;
  function "-" (arg : t_frame_y) return t_frame;

end package my_pkg;

package body my_pkg is

  function "+" (arg : t_frame) return t_frame_x is
    variable ret : t_frame_x;
  begin
    ret.a := arg(19 downto 18);
    ret.b := arg(17 downto 0);

    return ret;
  end function "+";

  function "-" (arg : t_frame_x) return t_frame is
    variable ret : t_frame;
  begin
    ret := arg.a & arg.b;
    
    return ret;
  end function "-";

  function "+" (arg : t_frame) return t_frame_y is
    variable ret : t_frame_y;
  begin
    ret.a := arg(19 downto 10);
    ret.b := arg(9 downto 0);

    return ret;
  end function "+";

  function "-" (arg : t_frame_y) return t_frame is
    variable ret : t_frame;
  begin
    ret := arg.a & arg.b;
    
    return ret;
  end function "-";

end package body my_pkg;
