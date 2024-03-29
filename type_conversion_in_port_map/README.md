1. Casting is always on the driver side.
   Example:
```vhdl
   adder_0 : entity work.adder
   port map (
     clk    => clk,
     en     => s_my_record.one_bit(0),
     slv_0  => s_my_record.slv,
     slv_1  => s_my_subtype,
     slv_2  => std_logic_vector(s_slv_2),
     un     => unsigned(s_un),
     std_logic_vector(sum) => s_sum
   );
```

 un is module input, s_un is driving signal.
 sum is module output that drives signal s_sum.

2. Exact subtypes do not need type conversion.

3. Signal of type std_logic_vector(0 downto 0)
   can not be assigned to signal of type std_logic.
   The assignment has to be done in following way:
```vhdl
   sl <= slv(0);
   or in case of casting in port map:
   sl => slv(0).
```
