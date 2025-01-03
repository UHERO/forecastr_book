### tsbox::ts_boxable()

#### Description

Mainly used internally.

#### Usage

``` R
ts_boxable(x)

check_ts_boxable(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

logical, either `TRUE` or `FALSE`. `check_ts_boxable()` fails if not
`TRUE`

#### Examples

``` R
ts_boxable(AirPassengers)
ts_boxable(lm)
```
