### fcutils::pipe()

#### Description

See `magrittr::%>%` for details.

#### Usage

``` R
lhs %>% rhs
```

#### Arguments

  ------------- -----------------------------------------------
  `lhs`{#lhs}   A value or the magrittr placeholder.
  `rhs`{#rhs}   A function call using the magrittr semantics.
  ------------- -----------------------------------------------

#### Value

The result of calling `rhs(lhs)`.
