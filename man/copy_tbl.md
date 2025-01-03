### fcutils::copy_tbl()

#### Description

Copy a data frame to clipboard (only works on MacOS)

#### Usage

``` R
copy_tbl(x, dec = 2)
```

#### Arguments

  ------------- -------------------------------------------------------------
  `x`{#x}       tibble (or data frame) to be copied
  `dec`{#dec}   number of decimals to round numeric columns to (default: 2)
  ------------- -------------------------------------------------------------

#### Value

copy_tbl() returns the input x invisibly

#### Examples

``` R
monthly_data_example |> copy_tbl()
monthly_data_example |> copy_tbl(1)
```
