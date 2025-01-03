### uherotheme::uhero_scale_colour_diverge()

#### Description

Uses `ggplot2::scale_color_gradient2`. `uhero_scale_color_diverge` is
available as an alias.

#### Usage

``` R
uhero_scale_colour_diverge(high = "blue", low = "orange", ...)
```

#### Arguments

  --------------- -------------------------------------------------------------------------------------------------
  `high`{#high}   A string that defaults to \"blue\". Can accept any of the other colors in `uhero_color_list`.
  `low`{#low}     A string that defaults to \"orange\". Can accept any of the other colors in `uhero_color_list`.
  `...`{#...}     Any other parameters that can be passed to `ggplot2::scale_color_gradient2`
  --------------- -------------------------------------------------------------------------------------------------

#### Examples

``` R
set.seed(1)
df <- data.frame(
 x = runif(100),
 y = runif(100),
 z1 = rnorm(100),
 z2 = abs(rnorm(100))
)
ggplot2::ggplot(df, ggplot2::aes(x, y)) +
ggplot2::geom_point(ggplot2::aes(colour = z1)) +
uhero_scale_colour_diverge()
```
