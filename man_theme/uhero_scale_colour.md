### uherotheme::uhero_scale_colour()

#### Description

Uses `ggplot2::discrete_scale` for the color aesthetic for discrete
scales and `ggplot2::scale_colour_gradientn` for the color aesthetic on
continuous scales. `uhero_scale_color` is available as an alias.

#### Usage

``` R
uhero_scale_colour(palette = "primary", discrete = TRUE, reverse = FALSE, ...)
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
ggplot2::ggplot(ggplot2::mpg, ggplot2::aes(hwy, class, color = class)) +
ggplot2::geom_point(show.legend = FALSE) +
uhero_scale_colour()
```
