### tsbox::ts_regular()

#### Description

Enforces regularity in data frame and `xts` objects, by turning implicit
`NA`s into explicit `NA`s. In `ts` objects, regularity is automatically
enforced.

#### Usage

``` R
ts_regular(x, fill = NA)
```

#### Arguments

  --------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}         ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `fill`{#fill}   numeric, instead of `NA`, an alternative value can be specified. E.g., 0, -99.
  --------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
x0 <- AirPassengers
x0[c(10, 15)] <- NA
x <- ts_na_omit(ts_dts(x0))
ts_regular(x)
ts_regular(x, fill = 0)

m <- mdeaths
m[c(10, 69)] <- NA
f <- fdeaths
f[c(1, 3, 15)] <- NA

ts_regular(ts_na_omit(ts_dts(ts_c(f, m))))
```
