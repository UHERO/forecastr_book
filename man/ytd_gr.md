### fcutils::ytd_gr()

#### Description

Year to date growth rate

#### Usage

``` R
ytd_gr(x)
```

#### Arguments

  --------- ---------------------
  `x`{#x}   a ts-boxable object
  --------- ---------------------

#### Value

object of the same type as the input containing year to date growth rate

#### Examples

``` R
monthly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("VISNS_HI") |>
  tsbox::ts_xts() |>
  ytd_gr() |>
  tail()
```
