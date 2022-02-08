In case of the same type names in 2 packages, the package name is required in declaration.
To be able to use names from package with and without package name prefix, the following is required:

```vhdl
library lib;
   use lib.foo;
   use lib.foo.all;
```
