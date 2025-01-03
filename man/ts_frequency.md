### tsbox::ts_frequency()

#### Description

Changes the frequency of a time series. By default, incomplete periods
of regular series are omitted.

#### Usage

``` R
ts_frequency(
  x,
  to = c("year", "quarter", "month", "week", "day", "hour", "min", "sec"),
  aggregate = "mean",
  na.rm = FALSE
)
```

#### Arguments

  ------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `to`{#to}                 desired frequency, either a character string (`"year"`, `"quarter"`, `"month"`) or an integer (`1`, `4`, `12`).
  `aggregate`{#aggregate}   character string, or function. Either `"mean"`, `"sum"`, `"first"`, or `"last"`, or any aggregate function, such as `base::mean()`.
  `na.rm`{#na.rm}           logical, if `TRUE`, incomplete periods are aggregated as well. For irregular series, incomplete periods are always aggregated.
  ------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

The [tempdisagg package](https://CRAN.R-project.org/package=tempdisagg)
can convert low frequency to high frequency data and has support for
ts-boxable objects. See `vignette("hf-disagg", package = "tempdisagg")`.

#### Value

a ts-boxable time series, with the same class as the input.

#### Examples

``` R
ts_frequency(cbind(mdeaths, fdeaths), "year", "sum")
ts_frequency(cbind(mdeaths, fdeaths), "quarter", "last")

ts_frequency(AirPassengers, 4, "sum")

## Note that incomplete years are omited by default
ts_frequency(EuStockMarkets, "year")
ts_frequency(EuStockMarkets, "year", na.rm = TRUE)
```
