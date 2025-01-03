### fcutils::pca_to_pc()

#### Description

Convert annualized growth to quarterly growth

#### Usage

``` R
pca_to_pc(x, freq = 4)
```

#### Arguments

  --------------- -------------------------------------------------------------
  `x`{#x}         ts-boxable object containing annualized growth (in percent)
  `freq`{#freq}   numeric frequency of the time series e.g. 4 for quarterly
  --------------- -------------------------------------------------------------

#### Value

object of the same type as the input containing quarterly growth (in
percent)

#### Examples

``` R
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pca() |>
  pca_to_pc() |>
  tail()
tsbox::ts_c(
  quarterly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_pca() |>
    pca_to_pc(),
  quarterly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_pc()
) |>
  dplyr::arrange(id, time) |>
  tsbox::ts_wide()
```
