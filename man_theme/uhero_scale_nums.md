### uherotheme::uhero_scale_nums()

#### Description

This can be passed in to the labels parameter of ggplot scales like
scale_x_continous() or scale_y_continuous() If the max value of the
scale is larger than 1000, the tick labels will be scaled down with a
suffix added to the maximum value. For max values of at least 10\^3 but
less than 10\^6, tick labels will be divided by 10\^3 with \"K\" added
to the label for the maximum value. For max values of at least 10\^6 but
less than 10\^9, tick labels will be divided by 10\^6 with \"M\" added
to the label for the maximum value. For max values of at least 10\^9 but
less than 10\^12, tick labels will be divided by 10\^9 with \"B\" added
to the label for the maximum value.

#### Usage

``` R
uhero_scale_nums(
  x,
  scale_limit = max(x, na.rm = TRUE),
  prefix = "",
  percent = FALSE,
  ...
)
```

#### Arguments

  ----------------------------- --------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                       Passed in from labels function.
  `scale_limit`{#scale_limit}   Defaults to the max value of the scale.
  `prefix`{#prefix}             This is optional and defaults to an empty string. This can be used to add things like currency labels, (i.e. \"\$100\").
  `percent`{#percent}           Boolean that defaults to false. Set the value to true to add a \"%\" to the maximum value tick label.
  `...`{#...}                   Additional arguments that can be passed to R\'s format().
  ----------------------------- --------------------------------------------------------------------------------------------------------------------------

#### Value

Returns a formatted string for the tick label.

#### Examples

``` R
set.seed(1)
df <- data.frame(
  x = rnorm(10) * 100000,
  y = seq(0, 1, length.out = 10)
)
ggplot2::ggplot(df, ggplot2::aes(x, y)) + ggplot2::geom_point() +
ggplot2::scale_y_continuous(labels = function(x) uhero_scale_nums(x, percent = TRUE)) +
ggplot2::scale_x_continuous(labels = function(x) uhero_scale_nums(x))
```
