### uherotheme::export_plot()

#### Description

Uses `ggplot2::ggsave` to save a copy of the chart. By default the
exports are sized at 1920 x 1080 pixels.

#### Usage

``` R
export_plot(file_name, plot, w = 1920, h = 1080, u = "px", ...)
```

#### Arguments

  ------------------------- -------------------------------------------------------------
  `file_name`{#file_name}   A string for the file name, including the extension.
  `plot`{#plot}             Ggplot plot object.
  `w`{#w}                   Integer - width of the exported image, defaults to 1920
  `h`{#h}                   Integer - height of the exported image, defaults to 1080
  `u`{#u}                   A string for the units, defaults to \"px\" for pixels
  `...`{#...}               Additional parameters that can be passed to ggplot2::ggsave
  ------------------------- -------------------------------------------------------------

#### Examples

``` R
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
plot <- ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point()
export_report_layout('plot.png', plot)
```
