### fcutils::plot_1()

#### Description

Interactive plot with level and growth rate

#### Usage

``` R
plot_1(
  x,
  rng_start = as.character(Sys.Date() - lubridate::years(10)),
  rng_end = as.character(Sys.Date() + lubridate::years(2)),
  height = 300,
  width = 900,
  yoy_gr = TRUE,
  gr_1 = TRUE
)
```

#### Arguments

  ------------------------- ----------------------------------------------------------------------
  `x`{#x}                   ts-boxable object to plot (e.g. time series of history, oldsol, sol)
  `rng_start`{#rng_start}   start of zoom range (\"YYYY-MM-DD\")
  `rng_end`{#rng_end}       end of the zoom range (\"YYYY-MM-DD\")
  `height`{#height}         height of a single panel (px)
  `width`{#width}           width of a single panel (px)
  `yoy_gr`{#yoy_gr}         year-over-year (default) or annualized growth
  `gr_1`{#gr_1}             only show growth for the first series (default)
  ------------------------- ----------------------------------------------------------------------

#### Value

a dygraph plot

#### Examples

``` R
monthly_data_example |>
  plot_1()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_TU_HI", "ECT_HI", "EMN_HI") |>
  plot_1()
```
