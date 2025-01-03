### fcutils::AtoQ()

#### Description

Linear interpolation based on AREMOS command reference page 292
(superseded by disagg())

#### Usage

``` R
AtoQ(ser_in, aggr = "mean")
```

#### Arguments

  ------------------- -----------------------------------------------------------
  `ser_in`{#ser_in}   the xts series to be interpolated (freq = a)
  `aggr`{#aggr}       interpolation method: aggregate via mean (default) or sum
  ------------------- -----------------------------------------------------------

#### Value

interpolated xts series (freq = q)

#### Examples

``` R
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_xts() |>
  tsbox::ts_pick("E_NF_HI") |>
  QtoA() |> ## this matches with below
  AtoQ() |>
  QtoA() |> ## this matches with above
  tsbox::ts_plot()
```
