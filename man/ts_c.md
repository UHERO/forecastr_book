### tsbox::ts_c()

#### Description

Collect time series as multiple time series.

#### Usage

``` R
ts_c(...)
```

#### Arguments

  ------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `...`{#...}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  ------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

In data frame objects, multiple time series are stored in a long data
frame. In `ts` and `xts` objects, time series are combined horizontally.

#### Value

a ts-boxable object of the same class as the input, i.e., an object of
class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`. If series of
different classes are combined, the class of the first series is used
(if possible).

#### See Also

ts_bind, to bind multiple time series to a single series.

#### Examples

``` R
ts_c(mdeaths, fdeaths)

ts_c(ts_df(EuStockMarkets), AirPassengers)

## labeling
x1 <- ts_c(
  `International Airline Passengers` = ts_xts(AirPassengers),
  `Deaths from Lung Diseases` = ldeaths
)
head(x1)

```
