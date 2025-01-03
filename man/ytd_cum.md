### fcutils::ytd_cum()

#### Description

Year to date sum or average

#### Usage

``` R
ytd_cum(x, avg = TRUE)
```

#### Arguments

  ------------- -----------------------------------------------------------------------------------
  `x`{#x}       a ts-boxable object
  `avg`{#avg}   if TRUE (default), return year to date average, if FALSE, return year to date sum
  ------------- -----------------------------------------------------------------------------------

#### Value

object of the same type as the input containing year to date sum or
average

#### Examples

``` R
monthly_data_example |>
  ytd_cum()
monthly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("VISNS_HI") |>
  tsbox::ts_xts() |>
  ytd_cum(avg = FALSE) |>
  tsbox::ts_plot()
```
