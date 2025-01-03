### tsbox::ts_bind()

#### Description

Combine time series to a new, single time series. `ts_bind` combines
time series as they are, `ts_chain` chains them together, using
percentage change rates.

#### Usage

``` R
ts_bind(...)

ts_chain(...)
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

ts_c to collect multiple time series

#### Examples

``` R
ts_bind(ts_span(mdeaths, end = "1975-12-01"), fdeaths)
ts_bind(mdeaths, c(2, 2))
ts_bind(mdeaths, 3, ts_bind(fdeaths, c(99, 2)))
ts_bind(ts_dt(mdeaths), AirPassengers)

## numeric vectors
ts_bind(12, AirPassengers, c(2, 3))
ts_chain(ts_span(mdeaths, end = "1975-12-01"), fdeaths)

ts_plot(ts_pc(ts_c(
  comb = ts_chain(ts_span(mdeaths, end = "1975-12-01"), fdeaths),
  fdeaths
)))
```
