### fcutils::ptd_cum()

#### Description

Period to date sum or average

#### Usage

``` R
ptd_cum(x, per = "year", avg = TRUE)
```

#### Arguments

  ------------- ---------------------------------------------------------------------------------------------------
  `x`{#x}       a ts-boxable object
  `per`{#per}   unit of time supplied to floor_date() (for ytd per = \"year\" (default), for mtd per = \"month\")
  `avg`{#avg}   if TRUE (default), retorn period to date average, if FALSE, return period to date sum
  ------------- ---------------------------------------------------------------------------------------------------

#### Value

object of the same type as the input containing period to date sum or
average

#### Examples

``` R
daily_data_example |>
  ptd_cum("week")
test <- daily_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("VAPNS_HI") |>
  ptd_cum("week")
tsbox::`%ts/%`(test, tsbox::ts_lag(test, "4 weeks")) |>
  tsbox::`%ts-%`(1) |>
  tsbox::`%ts*%`(100) |>
  tail()
```
