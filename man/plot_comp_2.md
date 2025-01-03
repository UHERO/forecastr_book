### fcutils::plot_comp_2()

#### Description

Two-panel plot of levels and growth rates

#### Usage

``` R
plot_comp_2(
  x,
  rng_start = as.character(Sys.Date() - lubridate::years(10)),
  rng_end = as.character(Sys.Date() + lubridate::years(2)),
  height = 300,
  width = 900,
  yoy_gr = TRUE,
  gr_bar = FALSE
)
```

#### Arguments

  ------------------------- ---------------------------------------------------
  `x`{#x}                   ts-boxable object to plot
  `rng_start`{#rng_start}   start of the zoom range (\"YYYY-MM-DD\")
  `rng_end`{#rng_end}       end of the zoom range (\"YYYY-MM-DD\")
  `height`{#height}         height of a single panel (px)
  `width`{#width}           width of a single panel (px)
  `yoy_gr`{#yoy_gr}         year-over-year (default) or annualized growth
  `gr_bar`{#gr_bar}         show bars or line (default) for the growth series
  ------------------------- ---------------------------------------------------

#### Value

a list with two dygraph plots (level, growth)

#### Examples

``` R
monthly_data_example |>
  plot_comp_2()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_TU_HI", "ECT_HI", "EMN_HI") |>
  plot_comp_2()
```
