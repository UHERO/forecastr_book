### uherotheme::uhero_scale_fill()

#### Description

Uses `ggplot2::discrete_scale` for the fill aesthetic for discrete
scales and `ggplot2::scale_fill_gradientn` for the fill aesthetic on
continuous scales.

#### Usage

``` R
uhero_scale_fill(palette = "primary", discrete = TRUE, reverse = FALSE, ...)
```

#### Arguments

  ----------------------- ----------------------------------------------------------------------------------------------------------
  `palette`{#palette}     A string that defaults to \"primary\". This can also be set to either \"secondary\" or \"all\".
  `discrete`{#discrete}   A boolean that defaults to TRUE. Set to FALSE for a continuous scale.
  `reverse`{#reverse}     A boolean that defaults to FALSE. Set to TRUE to reverse the color scale.
  `...`{#...}             Additional parameters that can be passed to `ggplot2::discrete_scale` or `ggplot2::scale_fill_gradientn`
  ----------------------- ----------------------------------------------------------------------------------------------------------

#### Examples

``` R
ggplot2::ggplot(ggplot2::mpg, ggplot2::aes(hwy, fill = class)) +
ggplot2::geom_bar(show.legend = FALSE) +
uhero_scale_fill(palette = 'secondary')
```
