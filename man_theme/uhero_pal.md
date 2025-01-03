### uherotheme::uhero_pal()

#### Description

A palette generator for UHERO colors.

#### Usage

``` R
uhero_pal(palette = "primary", discrete = TRUE, reverse = FALSE, ...)
```

#### Arguments

  ----------------------- -------------------------------------------------------------------------------------------------
  `palette`{#palette}     A string that defaults to \"primary\". This can also be set to either \"secondary\" or \"all\".
  `discrete`{#discrete}   A boolean that defaults to TRUE. Set to FALSE for a continuous scale.
  `reverse`{#reverse}     A boolean that defaults to FALSE. Set to TRUE to reverse the color scale.
  `...`{#...}             Additional parameters that can be passed to `colorRampPalette`
  ----------------------- -------------------------------------------------------------------------------------------------

#### Examples

``` R
uhero_pal()
uhero_pal("secondary", discrete = TRUE, reverse = TRUE)
```
