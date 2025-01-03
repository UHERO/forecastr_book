### tsbox::ts_index()

#### Description

`ts_index` returns an indexed series, with value of 1 at the `base` date
or range. `ts_compound` builds an index from percentage change rates,
starting with 1 and compounding the rates.

#### Usage

``` R
ts_compound(x, denominator = 100)

ts_index(x, base = NULL)
```

#### Arguments

  ----------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                       ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `denominator`{#denominator}   positive number. Set equal to 1 if percentage change rate is given a decimal fraction
  `base`{#base}                 base date, character string, `Date` or `POSIXct`, at which the index is set to 1. If two dates are provided, the mean in the range is set equal to 1 (see examples).
  ----------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
x <- ts_pc(ts_c(fdeaths, mdeaths))
ts_compound(x)
y <- ts_df(ts_c(fdeaths, mdeaths))
ts_index(y, "1974-02-01")

ts_plot(
  `My Expert Knowledge` = ts_chain(
    mdeaths,
    ts_compound(ts_bind(ts_pc(mdeaths), 15, 23, 33))
  ),
  `So Far` = mdeaths,
  title = "A Very Manual Forecast"
)

## mean of 1974 = 1
ts_index(mdeaths, c("1974-01-01", "1974-12-31"))
```
