### fcutils::plot_fc()

#### Description

Interactive plot with level and growth rate for forecast series

#### Usage

``` R
plot_fc(
  x,
  rng_start = as.character(Sys.Date() - lubridate::years(10)),
  rng_end = as.character(Sys.Date() + lubridate::years(2)),
  add_table = TRUE,
  table_start = rng_start,
  table_end = rng_end,
  height = 300,
  width = 900,
  yoy_gr = TRUE
)
```

#### Arguments

  ----------------------------- ---------------------------------------------------------------------------------------------
  `x`{#x}                       ts-boxable object to plot (min 1, max 3 time series) (e.g. current fcst, old fcst, history)
  `rng_start`{#rng_start}       start of zoom range (\"YYYY-MM-DD\")
  `rng_end`{#rng_end}           end of the zoom range (\"YYYY-MM-DD\")
  `add_table`{#add_table}       should a data table be appended to the plot? (default = TRUE)
  `table_start`{#table_start}   start of table range (\"YYYY-MM-DD\") (all data = NULL, default = rng_start)
  `table_end`{#table_end}       end of table range (\"YYYY-MM-DD\") (all data = NULL, default = rng_end)
  `height`{#height}             height of a single panel (px)
  `width`{#width}               width of a single panel (px)
  `yoy_gr`{#yoy_gr}             year-over-year (default) or annualized growth
  ----------------------------- ---------------------------------------------------------------------------------------------

#### Value

a dygraph plot

#### Examples

``` R
monthly_data_example |>
  plot_fc()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_TU_HI", "ECT_HI", "EMN_HI") |>
  plot_fc()
```
