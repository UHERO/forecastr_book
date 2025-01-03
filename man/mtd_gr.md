### fcutils::mtd_gr()

#### Description

Month to date growth rate

#### Usage

``` R
mtd_gr(x)
```

#### Arguments

  --------- ---------------------
  `x`{#x}   a ts-boxable object
  --------- ---------------------

#### Value

object of the same type as the input containing month to date growth
rate

#### Examples

``` R
daily_data_example |>
  mtd_gr() |>
  tail()
```
