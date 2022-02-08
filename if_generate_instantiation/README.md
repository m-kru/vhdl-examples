If you want to connect instance of some entity based on a generic value, this is the proper way:

```vhdl
generate_label_0: if USE_D_OUTPUT generate
    design_0 : entity work.design
    port map (
        clk  => clk,
        a_i  => a,
        b_i  => b,
        c_o  => c_0,
        d_o  => d_0
    );
else generate
    design_0 : entity work.design
    port map (
        clk  => clk,
        a_i  => a,
        b_i  => b,
        c_o  => c_0,
        d_o  => open
    );
end generate generate_label_0;
```

The following one is unfortunately not supported by VHDL.
```vhdl
    design_0 : entity work.design
    port map (
        clk  => clk,
       a_i  => a,
        b_i  => b,
        c_o  => c_1,
generate_label_1: if USE_D_OUTPUT generate
        d_o  => d_1
else generate
        d_o  => open
end generate generate_label_1;
    );
```
