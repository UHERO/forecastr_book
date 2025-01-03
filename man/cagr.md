### fcutils::cagr()

#### Description

Calculate compund annual growth

#### Usage

``` R
cagr(x)
```

#### Arguments

  --------- --------------------------------------------------------------------------------
  `x`{#x}   ts-boxable object for which growth is calculated between first and last period
  --------- --------------------------------------------------------------------------------

#### Value

a tibble with a single row containing the compound annual growth between
the first and last period of x (in percent)

#### Examples

``` R
quarterly_data_example |>
  cagr()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() |>
  cagr()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() |>
  tsbox::ts_span("2000-01-01", "2020-01-01") |>
  tsbox::ts_pick("E_NF_HI") |>
  cagr()
```
