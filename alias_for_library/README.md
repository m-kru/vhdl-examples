Using alias for library is supported by the standard.
However, some EDA tools do not support it, for example
Vivado (tested with version 2020.1).

```vhdl
library lib1;

entity tb_adders is
end entity;

architecture tb of tb_adders is

   alias lib_alias is lib1;
```
