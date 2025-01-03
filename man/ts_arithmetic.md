### tsbox::ts_arithmetic()

#### Description

Arithmetic Operators for ts-boxable objects

#### Usage

``` R
e1 %ts+% e2

e1 %ts-% e2

e1 %ts*% e2

e1 %ts/% e2
```

#### Arguments

  ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `e1`{#e1}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `e2`{#e2}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

a ts-boxable time series, with the same class as the left input.

#### Examples

``` R
head(fdeaths - mdeaths)
head(fdeaths %ts-% mdeaths)
head(ts_df(fdeaths) %ts-% mdeaths)
```
