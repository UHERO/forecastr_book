### tsbox::ts_summary()

#### Description

Extract time series properties, such as the number of observations
(`obs`), the time differences between observations (`obs`), the number
of observations per year (`freq`), and the start time stamp (`start`)
and the end time stamp (`end`) of the series.

#### Usage

``` R
ts_summary(x, spark = FALSE)
```

#### Arguments

  ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}           ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `spark`{#spark}   logical should an additional column with a spark-line added to the data frame (experimental, ASCII only on Windows.)
  ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

`ts_summary` returns a `data.frame`. Individual column can be accessed
through the `$` notation (see examples).

#### Examples

``` R
ts_summary(ts_c(mdeaths, austres))
ts_summary(ts_c(mdeaths, austres), spark = TRUE)
## Extracting specific properties
ts_summary(AirPassengers)$start
ts_summary(AirPassengers)$freq
ts_summary(AirPassengers)$obs
```
