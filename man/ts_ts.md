### tsbox::ts_ts()

#### Description

tsbox is built around a set of converters, which convert time series
stored as `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`,
`tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries` to each
other.

#### Usage

``` R
ts_data.frame(x)

ts_df(x)

ts_data.table(x)

ts_dt(x)

ts_tbl(x)

ts_tibbletime(x)

ts_timeSeries(x)

ts_tis(x)

ts_ts(x)

ts_irts(x)

ts_tsibble(x)

ts_tslist(x)

ts_xts(x)

ts_zoo(x)

ts_zooreg(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

In data frames, multiple time series will be stored in a \'long\'
format. tsbox detects a *value*, a *time* and zero to several *id*
columns. Column detection is done in the following order:

1.  Starting **on the right**, the first first `numeric` or `integer`
    column is used as **value column**.

2.  Using the remaining columns, and starting on the right again, the
    first `Date`, `POSIXct`, `numeric` or `character` column is used as
    **time column**. `character` strings are parsed by
    `anytime::anytime()`. The time stamp, `time`, indicates the
    beginning of a period.

3.  **All remaining** columns are **id columns**. Each unique
    combination of id columns points to a time series.

**Alternatively**, the **time** column and the **value** column to be
explicitly named as `time` and `value`. If explicit names are used, the
column order will be ignored.

Whenever possible, tsbox relies on **heuristic time conversion**. When a
monthly `"ts"` time series, e.g., `AirPassengers`, is converted to a
data frame, each time stamp (of class `"Date"`) is the first day of the
month. In most circumstances, this reflects the actual meaning of the
data stored in a `"ts"` object. Technically, of course, this is not
correct: `"ts"` objects divide time in period of equal length, while in
reality, February is shorter than January. Heuristic conversion is done
for frequencies of 0.1 (decades), 1 (years), 4 (quarters) and 12
(month).

For other frequencies, e.g. 260, of `EuStockMarkets`, tsbox uses **exact
time conversion**. The year is divided into 260 equally long units, and
time stamp of a period will be a point in time (of class `"POSIXct"`).

#### Value

ts-boxable time series of the desired class, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
x.ts <- ts_c(mdeaths, fdeaths)
x.ts
ts_df(x.ts)

suppressMessages(library(dplyr))
ts_tbl(x.ts)

suppressMessages(library(data.table))
ts_dt(x.ts)

suppressMessages(library(xts))
ts_xts(x.ts)

## heuristic time conversion
## 1 month: approx. 1/12 year
ts_df(AirPassengers)

## exact time conversion
## 1 trading day: exactly 1/260 year
ts_df(EuStockMarkets)

## multiple ids
a <- ts_df(ts_c(fdeaths, mdeaths))
a$type <- "level"
b <- ts_pc(a)
b$type <- "pc"
multi.id.df <- rbind(a, b)

ts_ts(multi.id.df)
ts_plot(multi.id.df)
```
