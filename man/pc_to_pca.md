### fcutils::pc_to_pca()

#### Description

Convert quarterly growth to annualized growth

#### Usage

``` R
pc_to_pca(x, freq = 4)
```

#### Arguments

  --------------- ------------------------------------------------------------
  `x`{#x}         ts-boxable object containing quarterly growth (in percent)
  `freq`{#freq}   numeric frequency of the time series e.g. 4 for quarterly
  --------------- ------------------------------------------------------------

#### Value

object of the same type as the input containing annualized growth (in
percent)

#### Examples

``` R
quarterly_data_example |>
  tsbox::ts_long() |>
  tsbox::ts_pc() |>
  pc_to_pca() |>
  tail()
tsbox::ts_c(
  quarterly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_pc() |>
    pc_to_pca(),
  quarterly_data_example |>
    tsbox::ts_long() |>
    tsbox::ts_pca()
) |>
  dplyr::arrange(id, time) |>
  tsbox::ts_wide()
```
