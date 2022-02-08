There is no clean way to get the size (number of bits) for custom
record type. However, it is doable with a function that transforms
to the std_logic_vector type and predefined 'length attribute.

Example:
    `generic map (WIDTH => to_slv(s_d)'length)`
