library work;
  use work.foo;

entity foo is
  port (
    i : in  foo.t_my;
    o : out foo.t_my
  );
end entity foo;

architecture rtl of foo is

begin

  o <= i;

end architecture rtl;
