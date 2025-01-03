### fcutils::set_attr_tslist()

#### Description

Set class attribute to tslist

#### Usage

``` R
set_attr_tslist(x)
```

#### Arguments

  --------- --------------------------------------------------------------
  `x`{#x}   list, typically a result of purrr::map() applied to a tslist
  --------- --------------------------------------------------------------

#### Details

A purrr::map() function applied to a tslist (obtained by
tsbox::ts_tslist()) drops the tslist class attribute. This function
resets that attribute.

#### Value

list with class attributes set to list and tslist

#### Examples

``` R
monthly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_tslist() |>
  purrr::map(~ .x / 1000) |>
  set_attr_tslist() |>
  tsbox::ts_tbl() |>
  tsbox::ts_wide()
```
