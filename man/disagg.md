### fcutils::disagg()

#### Description

Interpolate univariate or multivariate time series from low to high
frequency

#### Usage

``` R
disagg(x, conv_type = "mean", target_freq = "quarter", pattern = NULL)
```

#### Arguments

  ----------------------------- ----------------------------------------------------------------------
  `x`{#x}                       a tx-boxable object at a low frequency (e.g. annual or quarterly)
  `conv_type`{#conv_type}       match the quarterly value via \"first\", \"last\", \"sum\", \"mean\"
  `target_freq`{#target_freq}   target frequency \"quarter\" or \"month\"
  `pattern`{#pattern}           a single high-frequency pattern that the interpolation should follow
  ----------------------------- ----------------------------------------------------------------------

#### Details

the time-span of the high-frequency pattern has to match or be larger
than the time-span of the low frequency series. NA values are not
allowed.

#### Value

interpolated object of the same type as the input

#### Examples

``` R
quarterly_data_example |>
  disagg(conv_type = "mean", target_freq = "month")
quarterly_data_example |>
  disagg(conv_type = "mean", target_freq = "month") |>
  tsbox::ts_long() |>
  tsbox::ts_frequency(to = "quarter", aggregate = "mean") |>
  tsbox::ts_wide() ## this matches original data
## works with a single series too
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_NF_HI") |>
  disagg(conv_type = "mean", target_freq = "month") |>
  tsbox::ts_plot()
## using a high-frequency pattern
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_span("2005-01-01", "2020-01-01") |>
  disagg(
    conv_type = "mean", target_freq = "month", pattern = monthly_data_example |>
      tsbox::ts_long() |>
      tsbox::ts_pick("VISNS_HI")
  )
## multiple low-frequency series, same number of high-frequency patterns
purrr::map2(
  quarterly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_pick("E_NF_HI", "ECT_HI") |>
    tsbox::ts_span("2005-01-01", "2020-01-01") |>
    tsbox::ts_tslist(),
  monthly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_tslist(),
  ~ disagg(.x, conv_type = "mean", target_freq = "month", pattern = .y)
)
```
