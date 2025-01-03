### fcutils::is_wide()

#### Description

Check if a data frame is in wide format

#### Usage

``` R
is_wide(x)
```

#### Arguments

  --------- ----------------------
  `x`{#x}   tibble or data frame
  --------- ----------------------

#### Value

returns TRUE for wide format data frame (time and value columns), FALSE
otherwise

#### Examples

``` R
monthly_data_example |> is_wide()
monthly_data_example |>
  tsbox::ts_long() |>
  is_wide()
dat_in <- monthly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_tslist()
wide_df <- is_wide(dat_in)
x_mod <- if (wide_df) tsbox::ts_long(dat_in) else tsbox::ts_tbl(dat_in)
ans <- if (wide_df) tsbox::ts_wide(x_mod) else tsbox::copy_class(x_mod, dat_in)
```
