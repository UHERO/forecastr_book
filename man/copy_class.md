### tsbox::copy_class()

#### Description

Copies class attributes from an existing ts-boxable series. Mainly used
internally.

#### Usage

``` R
copy_class(
  x,
  template,
  preserve.mode = TRUE,
  preserve.names = FALSE,
  preserve.time = FALSE,
  preserve.attr = TRUE
)
```

#### Arguments

  ----------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}                             ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `template`{#template}               ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `preserve.mode`{#preserve.mode}     should the mode the time column be preserved (data frame only)
  `preserve.names`{#preserve.names}   should the name of the time column be preserved (data frame only)
  `preserve.time`{#preserve.time}     should the values time column be preserved (data frame only)
  `preserve.attr`{#preserve.attr}     should the attributes of the value column be preserved (data frame only)
  ----------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

Inspired by `xts::reclass`, which does something similar.

#### Value

a ts-boxable object of the same class as `template`, i.e., an object of
class `ts`, `xts`, `zoo`, `data.frame`, `data.table`, `tbl`, `tbl_ts`,
`tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
copy_class(mdeaths, ts_tbl(fdeaths))
```
