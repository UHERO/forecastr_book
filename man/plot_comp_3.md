### fcutils::plot_comp_3()

#### Description

Three-panel plot of levels, index, and growth rates

#### Usage

``` R
plot_comp_3(
  x,
  base_date = as.character(Sys.Date() - lubridate::years(10)),
  rng_start = as.character(Sys.Date() - lubridate::years(10)),
  rng_end = as.character(Sys.Date() + lubridate::years(2)),
  height = 300,
  width = 900,
  yoy_gr = TRUE,
  gr_bar = FALSE
)
```

#### Arguments

  ------------------------- -----------------------------------------------------
  `x`{#x}                   ts-boxable object to plot
  `base_date`{#base_date}   base period for the indexed series (\"YYYY-MM-DD\")
  `rng_start`{#rng_start}   start of the zoom range (\"YYYY-MM-DD\")
  `rng_end`{#rng_end}       end of the zoom range (\"YYYY-MM-DD\")
  `height`{#height}         height of a single panel (px)
  `width`{#width}           width of a single panel (px)
  `yoy_gr`{#yoy_gr}         year-over-year (default) or annualized growth
  `gr_bar`{#gr_bar}         show bars or line (default) for the growth series
  ------------------------- -----------------------------------------------------

#### Value

a list with three dygraph plots (level, index, growth)

#### Examples

``` R
monthly_data_example |>
  plot_comp_3()
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pick("E_TU_HI", "ECT_HI", "EMN_HI") |>
  plot_comp_3()
```
