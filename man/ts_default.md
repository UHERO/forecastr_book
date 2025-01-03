### tsbox::ts_default()

#### Description

In data frame objects (`data.frame`, `tibble`, `data.table`), tsbox
automatically detects the time and the value column. This function
changes the column names to the defaults (`time`, `value`), so that
auto-detection can be avoided in future operations.

#### Usage

``` R
ts_default(x)
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
df <- ts_df(ts_c(mdeaths, fdeaths))
## non-default colnames
colnames(df) <- c("id", "date", "count")
## switch back to default colnames
ts_default(df)
```
