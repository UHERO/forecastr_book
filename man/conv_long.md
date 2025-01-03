### fcutils::conv_long()

#### Description

Convert \"ts-boxable\" objects into long format

#### Usage

``` R
conv_long(x, ser_info = FALSE)
```

#### Arguments

  ----------------------- --------------------------------------------------------------------------------------------
  `x`{#x}                 a \"tx-boxable\" object to be converted
  `ser_info`{#ser_info}   should additional details be returned (TRUE) or only the long format of x (default: FALSE)
  ----------------------- --------------------------------------------------------------------------------------------

#### Details

This function converts wide data frames and other ts-boxable objects to
the long format (wide data frames are not ts-boxable). In addition, it
ensures that objects containing a single time series have an id column.

#### Value

returns a ts-boxable object in long format with `id`, `time` and `value`
columns. if `ser_info = TRUE`, also returns the following attributes:
`was_wide` is `TRUE` if x is a wide data frame, `FALSE` otherwise, and
`ser_names` are the names of the series in x.

#### Examples

``` R
quarterly_data_example |>
  conv_long()
quarterly_data_example |>
  conv_long() |>
  tsbox::ts_tslist() |>
  conv_long()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() |>
  conv_long(ser_info = TRUE)
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_NF_HI") |>
  tsbox::ts_xts() |>
  conv_long()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() |>
  tsbox::ts_pick("E_NF_HI") |>
  conv_long()
```
