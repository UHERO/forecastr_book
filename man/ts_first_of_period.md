### tsbox::ts_first_of_period()

#### Description

Replace date or time values by the first of the period. tsbox usually
relies on timestamps being the first value of a period.

#### Usage

``` R
ts_first_of_period(x)
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
x <- ts_c(
  a = ts_lag(ts_df(mdeaths), "14 days"),
  b = ts_lag(ts_df(mdeaths), "-2 days")
)
ts_first_of_period(x)
ts_first_of_period(ts_lag(ts_df(austres), "14 days"))
```
