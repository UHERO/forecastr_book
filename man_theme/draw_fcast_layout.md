### uherotheme::draw_fcast_layout()

#### Description

This modifies the size of the view port window to more accurately
reflect the size of the figure including the placement of elements like
data labels that would be used in a forecast layout.

#### Usage

``` R
draw_fcast_layout(plot, w = 4.5, h = 2.45)
```

#### Arguments

  --------------- -----------------------------------------------------
  `plot`{#plot}   Plot object
  `w`{#w}         Width of the view port in inches, defaults to 4.5
  `h`{#h}         Height of the view port in inches, defaults to 2.45
  --------------- -----------------------------------------------------

#### Examples

``` R
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
plot <- ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point()
draw_fcast_layout(plot)
```
