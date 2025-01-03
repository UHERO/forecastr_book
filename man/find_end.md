### fcutils::find_end()

#### Description

Find the date of the last observation (NAs are dropped)

#### Usage

``` R
find_end(x, last_day = FALSE)
```

#### Arguments

  ----------------------- ------------------------------------------------------------
  `x`{#x}                 ts-boxable object
  `last_day`{#last_day}   should the last day of period be returned (default: FALSE)
  ----------------------- ------------------------------------------------------------

#### Value

date associated with last observation

#### Examples

``` R
quarterly_data_example |>
  dplyr::mutate(E_NF_HI = dplyr::if_else(time > "2022-01-01", NA_real_, E_NF_HI)) |>
  find_end()
quarterly_data_example |>
  dplyr::mutate(E_NF_HI = dplyr::if_else(time > "2022-01-01", NA_real_, E_NF_HI)) |>
  find_end(TRUE)
```
