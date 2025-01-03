### uherotheme::uhero_theme()

#### Description

Modifies the ggplot minimal theme to fit the style used for UHERO
reports/presentations.

#### Usage

``` R
uhero_theme(layout = FALSE)
```

#### Arguments

  ------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `layout`{#layout}   A boolean to indicate whether or not the theme is being applied to a plot that is to be used in a UHERO report layout. This defaults to false. If layout is TRUE, then the base size is set to 9 and the font family is set to open sans. If the parameter is FALSE, then the base size is set to 30 and the font family is set to opensans-semibold. Set layout to TRUE if the plot is being used for a UHERO report.
  ------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Examples

``` R
plot <- ggplot2::ggplot(ggplot2::mpg) + uhero_theme()
```
