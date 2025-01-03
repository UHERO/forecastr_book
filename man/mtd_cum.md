### fcutils::mtd_cum()

#### Description

Month to date sum or average

#### Usage

``` R
mtd_cum(x, avg = TRUE)
```

#### Arguments

  ------------- -------------------------------------------------------------------------------------
  `x`{#x}       a ts-boxable object
  `avg`{#avg}   if TRUE (default), return month to date average, if FALSE, return month to date sum
  ------------- -------------------------------------------------------------------------------------

#### Value

object of the same type as the input containing year to date sum or
average

#### Examples

``` R
daily_data_example |>
  mtd_cum()
test <- daily_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("VAPNS_HI") |>
  mtd_cum()
tsbox::`%ts/%`(test, tsbox::ts_lag(test, "6 months")) |> tail()
```
