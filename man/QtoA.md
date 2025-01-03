### fcutils::QtoA()

#### Description

Aggregate from quarterly to annual frequency (superseded by
tsbox::ts_frequency())

#### Usage

``` R
QtoA(ser_in, aggr = "mean")
```

#### Arguments

  ------------------- -------------------------------------------
  `ser_in`{#ser_in}   the xts series to be converted (freq = q)
  `aggr`{#aggr}       aggregate via mean (default) or sum
  ------------------- -------------------------------------------

#### Value

converted xts series (freq = a)

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
