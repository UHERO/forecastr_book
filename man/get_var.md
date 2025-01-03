### fcutils::get_var()

#### Description

Construct a series name from variable components and retrieve the series

#### Usage

``` R
get_var(ser_in, env = parent.frame())
```

#### Arguments

  ------------------- -----------------------------------------------------------------
  `ser_in`{#ser_in}   a variable name (character string with substituted expressions)
  `env`{#env}         environment where the expression should be evaluated
  ------------------- -----------------------------------------------------------------

#### Value

variable

#### Examples

``` R
ser_i <- "_NF"
cnty_i <- "HI"
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() %$% get_var("E{ser_i}_{cnty_i}")
```
