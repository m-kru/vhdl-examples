library work;
  use work.foo.all;

entity tb is
end entity tb;

architecture tb of tb is

  signal i,o : t_my;

begin

  foo_inst : entity work.ent port map (i => i, o => o);

end architecture tb;
