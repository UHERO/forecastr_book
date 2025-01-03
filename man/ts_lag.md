### tsbox::ts_lag()

#### Description

Shift time stamps in ts-boxable time series, either by a number of
periods or by a fixed amount of time.

#### Usage

``` R
ts_lag(x, by = 1)
```

#### Arguments

  ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}     ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `by`{#by}   integer or character, either the number of shifting periods (integer), or an absolute amount of time (character). See details.
  ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

The lag order, `by`, is defined the opposite way as in R base. Thus, -1
is a lead and +1 a lag.

If `by` is integer, the time stamp is shifted by the number of periods.
This requires the series to be regular.

If `by` is character, the time stamp is shifted by a specific amount of
time. This can be one of one of `"sec"`, `"min"`, `"hour"`, `"day"`,
`"week"`, `"month"`, `⁠"quarter" or ⁠`{style="white-space: pre;"}\"year\",
optionally preceded by a (positive or negative) integer and a space, or
followed by plural \"s\". This is passed to `base::seq.Date()`. This
does not require the series to be regular.

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
ts_plot(AirPassengers, ts_lag(AirPassengers), title = "The need for glasses")

ts_lag(fdeaths, "1 month")
ts_lag(fdeaths, "1 year")
x <- ts_df(fdeaths)
ts_lag(x, "2 day")
ts_lag(x, "2 min")
ts_lag(x, "-1 day")
```
