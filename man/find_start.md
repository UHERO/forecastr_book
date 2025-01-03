### fcutils::find_start()

#### Description

Find the date of the first observation (NAs are dropped)

#### Usage

``` R
find_start(x)
```

#### Arguments

  --------- -------------------
  `x`{#x}   ts-boxable object
  --------- -------------------

#### Value

dates associated with first observation

#### Examples

``` R
quarterly_data_example |>
  dplyr::mutate(E_NF_HI = dplyr::if_else(time < "2000-01-01", NA_real_, E_NF_HI)) |>
  find_start()
```
