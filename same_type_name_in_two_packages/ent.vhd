library work;
  use work.foo;
  use work.foo.all;
  use work.bar;
  use work.bar.all;

entity ent is
  port (
    i : in  foo.t_my;
    o : out foo.t_my
  );
end entity ent;

architecture rtl of ent is

begin

  o <= i;

end architecture rtl;
