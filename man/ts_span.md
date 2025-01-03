### tsbox::ts_span()

#### Description

Filter time series for a time span.

#### Usage

``` R
ts_span(x, start = NULL, end = NULL, template = NULL, extend = FALSE)
```

#### Arguments

  ----------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                 ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `start`{#start}         start date, character string of length 1, `Date` or `POSIXct`
  `end`{#end}             end date, character string of length 1, `Date` or `POSIXct`.
  `template`{#template}   ts-boxable time series, an object of class `ts`, `xts`, `data.frame`, `data.table`, or `tibble`. If provided, `from` and `to` will be extracted from the object.
  `extend`{#extend}       logical. If true, the start and end values are allowed to extend the series (by adding `NA` values).
  ----------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

All date and times, when entered as character strings, are processed by
`anytime::anydate()` or `anytime::anytime()`. Thus a wide range of
inputs are possible. See examples.

`start` and `end` can be specified relative to each other, using one of
`"sec"`, `"min"`, `"hour"`, `"day"`, `"week"`, `"month"`,
`⁠"quarter" or ⁠`{style="white-space: pre;"}\"year\", or an abbreviation.
If the series are of the same frequency, the shift can be specified in
periods. See examples.

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
## use 'anytime' shortcuts
ts_span(mdeaths, start = "1979")       ## shortcut for 1979-01-01
ts_span(mdeaths, start = "1979-4")     ## shortcut for 1979-04-01
ts_span(mdeaths, start = "197904")     ## shortcut for 1979-04-01

## it's fine to use an to date outside of series span
ts_span(mdeaths, end = "2001-01-01")

## use strings to set start or end relative to each other

ts_span(mdeaths, start = "-7 month")   ## last 7 months
ts_span(mdeaths, start = -7)           ## last 7 periods
ts_span(mdeaths, start = -1)           ## last single value
ts_span(mdeaths, end = "1e4 hours")    ## first 10000 hours


ts_plot(
  ts_span(mdeaths, start = "-3 years"),
  title = "Three years ago",
  subtitle = "The last three years of available data"
)

ts_ggplot(
  ts_span(mdeaths, end = "28 weeks"),
  title = "28 weeks later",
  subtitle = "The first 28 weeks of available data"
) + theme_tsbox() + scale_color_tsbox()


## Limit span of 'discoveries' to the same span as 'AirPassengers'
ts_span(discoveries, template = AirPassengers)
ts_span(mdeaths, end = "19801201", extend = TRUE)
```
