### tsbox::relevant_class()

#### Description

Mainly used internally.

#### Usage

``` R
relevant_class(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

character, the relevant class of ts-boxable object

#### Examples

``` R
relevant_class(AirPassengers)
x <- ts_df(AirPassengers)
relevant_class(x)
```
