### fcutils::index()

#### Description

Get indexed series (wrapper around tsbox::ts_index())

#### Usage

``` R
index(x, base_per = as.character(Sys.Date()), base_value = 100)
```

#### Arguments

  --------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                     ts-boxable object to be indexed
  `base_per`{#base_per}       base date when the index is set to base_value (see examples). If two dates are provided, the mean in the range is set equal to base_value.
  `base_value`{#base_value}   numeric value of the index at base_per (e.g. 1 or 100)
  --------------------------- --------------------------------------------------------------------------------------------------------------------------------------------

#### Value

indexed object of the same type as the input

#### Examples

``` R
quarterly_data_example |>
  index(2010.1)
quarterly_data_example |>
  index(c(2010.1, 2010.4))
quarterly_data_example |>
  index(c("2010-01-01", "2010-12-31"), 1)
```
