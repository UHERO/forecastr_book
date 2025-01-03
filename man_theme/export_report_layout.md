### uherotheme::export_report_layout()

#### Description

Uses `ggplot2::ggsave` to save a copy of the chart. By default, charts
are sized at 5.6931 x 4 inches. Sometimes charts may need to be larger,
so the export function does accept parameters to change the width and
height. Please use a \'.svg\', \'.pdf\', or \'.eps\' extension when
exporting for a report layout.

#### Usage

``` R
export_report_layout(file_name, plot, w = 5.6931, h = 4, u = "in", ...)
```

#### Arguments

  ------------------------- -------------------------------------------------------------
  `file_name`{#file_name}   A string for the file name, including the extension.
  `plot`{#plot}             Ggplot plot object.
  `w`{#w}                   Integer - width of the exported image, defaults to 5.6931
  `h`{#h}                   Integer - height of the exported image, defaults to 4
  `u`{#u}                   A string for the units, defaults to \"in\" for inches
  `...`{#...}               Additional parameters that can be passed to ggplot2::ggsave
  ------------------------- -------------------------------------------------------------

#### Examples

``` R
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
plot <- ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point()
export_report_layout('plot.svg', plot)
```
