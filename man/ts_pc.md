### tsbox::ts_pc()

#### Description

`ts_pcy` and `ts_diffy` calculate the percentage change rate and the
difference compared to the previous period, `ts_pcy` and `ts_diffy`
calculate the percentage change rate compared to the same period of the
previous year. `ts_pca` calculates annualized percentage change rates
compared to the previous period.

#### Usage

``` R
ts_pc(x)

ts_diff(x)

ts_pca(x)

ts_pcy(x)

ts_diffy(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
x <- ts_c(fdeaths, mdeaths)
ts_diff(x)
ts_pc(x)
ts_pca(x)
ts_pcy(x)
ts_diffy(x)
```
