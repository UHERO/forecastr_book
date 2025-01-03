### tsbox::ts_na_omit()

#### Description

Remove NA values in ts-boxable objects, turning explicit into implicit
missing values.

#### Usage

``` R
ts_na_omit(x)
```

#### Arguments

  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

Note that internal NAs in `ts` time series will not be removed, as this
conflicts with the regular structure.

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### See Also

ts_regular, for the opposite, turning implicit into explicit missing
values.

#### Examples

``` R
x <- AirPassengers
x[c(2, 4)] <- NA

## A ts object does only know explicit NAs
ts_na_omit(x)

## by default, NAs are implicit in data frames
ts_df(x)

## make NAs explicit
ts_regular(ts_df(x))

## and implicit again
ts_na_omit(ts_regular(ts_df(x)))
```
