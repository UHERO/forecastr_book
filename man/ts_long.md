### tsbox::ts_long()

#### Description

Functions to reshape multiple time series from \'wide\' to \'long\' and
vice versa. Note that long format data frames are ts-boxable objects,
where wide format data frames are not. `ts_long` automatically
identifies a **time** column, and uses columns on the left as id
columns.

#### Usage

``` R
ts_long(x)

ts_wide(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------
  `x`{#x}   a ts-boxable time series, or a wide `data.frame`, `data.table`, or `tibble`.
  --------- ------------------------------------------------------------------------------

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
x <- ts_df(ts_c(mdeaths, fdeaths))
df.wide <- ts_wide(x)
df.wide
ts_long(df.wide)
```
