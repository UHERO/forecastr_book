### uherotheme::draw_report_layout()

#### Description

This modifies the size of the view port window to more accurately
reflect the size of the figure including the placement of elements like
data labels that would be used in a UHERO report layout. Sometimes
charts may need to be a different size, so the function does accept
parameters to change the width and height.

#### Usage

``` R
draw_report_layout(plot, w = 5.6931, h = 4)
```

#### Arguments

  --------------- ------------------------------------------------------
  `plot`{#plot}   Plot object
  `w`{#w}         Width of the view port in inches, defaults to 5.6931
  `h`{#h}         Height of the view port in inches, defaults to 4
  --------------- ------------------------------------------------------

#### Examples

``` R
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
plot <- ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point()
draw_report_layout(plot)
```
