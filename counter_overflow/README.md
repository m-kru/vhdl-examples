This example illustrates that natural counter overflow is handled automatically.
This means that there is no need to write VHDL code in the following verbose way:

```vhdl
process (clk) is
    constant COUNTER_OVERFLOW  : positive := 2**20;
    variable counter           : unsigned(19 downto 0);
begin
    if rising_edge(clk) then
        data_out <= std_logic_vector(counter);
        if common_word_counter = COUNTER_OVERFLOW-1 then
            counter := (others => '0');
        else
            counter := counter + 1;
        end if;
    end if;
end process;
```

Instead one can write the same in concise way:

```
process (clk) is
    variable counter : unsigned(19 downto 0);
begin
    if rising_edge(clk) then
        data_out <= std_logic_vector(counter);
        counter := counter + 1;
    end if;
end process;
```
