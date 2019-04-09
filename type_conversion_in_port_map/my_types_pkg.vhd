library ieee;
use ieee.std_logic_1164.all;

package my_types_pkg is

  subtype my_subtype is std_logic_vector(31 downto 0);

  type my_record is record
    slv     : std_logic_vector(31 downto 0);
    one_bit : std_logic_vector(0 downto 0);
  end record;
end my_types_pkg;
