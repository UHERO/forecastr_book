### fcutils::ptd_gr()

#### Description

Period to date growth rate

#### Usage

``` R
ptd_gr(x, per = "year", lag_length = "1 year")
```

#### Arguments

  --------------------------- -----------------------------------------------------------------------------------------------------------------
  `x`{#x}                     a ts-boxable object
  `per`{#per}                 unit of time supplied to floor_date() (for ytd per = \"year\" (default), for mtd per = \"month\")
  `lag_length`{#lag_length}   period over which growth is calculated (e.g. \"1 year\" (default), \"3 years\", etc. See ?ts_lag() for options)
  --------------------------- -----------------------------------------------------------------------------------------------------------------

#### Value

object of the same type as the input containing period to date growth
rate

#### Examples

``` R
monthly_data_example |>
  ptd_gr() |>
  tail()
monthly_data_example |>
  dplyr::select(time, "VAPNS_HI") |>
  ptd_gr(per = "month", lag_length = "3 years") |>
  tail()
## don't use lag_length = "1 year" with weekly data
daily_data_example |>
  ptd_gr("week")
## lag_length = "52 weeks" instead
daily_data_example |>
  ptd_gr("week", "52 weeks")
## and use lag_length = "364 days" with daily data
daily_data_example |>
  ptd_gr("day", "364 days")
daily_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("VAPNS_HI") |>
  ptd_gr("week", "4 weeks") %>%
  tail()
```
