### uherotheme::export_fcast_layout()

#### Description

Uses `ggplot2::ggsave` to save a copy of the chart. By default, charts
are sized at 4.5 x 2.45 inches. Sometimes charts may need to be larger,
so the export function does accept parameters to change the width and
height. Please try not to exceed 5 inches for the width. If the exported
file is intended for use in a forecast layout, please use a \'.svg\',
\'.pdf\', or \'.eps\' extension.

#### Usage

``` R
export_fcast_layout(file_name, forecast_plot, w = 4.5, h = 2.45, u = "in", ...)
```

#### Arguments

  --------------------------------- -------------------------------------------------------------
  `file_name`{#file_name}           A string for the file name, including the extension.
  `forecast_plot`{#forecast_plot}   Ggplot plot object.
  `w`{#w}                           Integer - width of the exported image, defaults to 4.5
  `h`{#h}                           Integer - height of the exported image, defaults to 2.45
  `u`{#u}                           A string for the units, defaults to \"in\" for inches
  `...`{#...}                       Additional parameters that can be passed to ggplot2::ggsave
  --------------------------------- -------------------------------------------------------------

#### Examples

``` R
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
plot <- ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point()
export_fcast_layout('plot.svg', plot)
```
