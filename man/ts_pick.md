### tsbox::ts_pick()

#### Description

Pick (and optionally rename) series from multiple time series.

#### Usage

``` R
ts_pick(x, ...)
```

#### Arguments

  ------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `x`{#x}       ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `...`{#...}   character string(s), names of the series to be picked, or integer, with positions. If arguments are named, the series will be renamed.
  ------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Value

a ts-boxable object of the same class as `x`, i.e., an object of class
`ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`,
`tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.

#### Examples

``` R
## Interactive use

ts_plot(ts_pick(
  EuStockMarkets,
  `My Dax` = "DAX",
  `My Smi` = "SMI"
))
ts_pick(EuStockMarkets, c(1, 2))
ts_pick(EuStockMarkets, `My Dax` = "DAX", `My Smi` = "SMI")

## Programming use
to.be.picked.and.renamed <- c(`My Dax` = "DAX", `My Smi` = "SMI")
ts_pick(EuStockMarkets, to.be.picked.and.renamed)

```
