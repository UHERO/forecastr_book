### tsbox::ts_()

#### Description

`ts_` turns an existing function into a function that can deal with
ts-boxable time series objects.

#### Usage

``` R
load_suggested(pkg)

ts_(fun, class = "ts", vectorize = FALSE, reclass = TRUE)

ts_apply(x, fun, ...)
```

#### Arguments

  ------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `pkg`{#pkg}               external package, to be suggested (automatically added by `ts_`) `predict()`. (See examples)
  `fun`{#fun}               function, to be made available to all time series classes
  `class`{#class}           class that the function uses as its first argument
  `vectorize`{#vectorize}   should the function be vectorized? (not yet implemented)
  `reclass`{#reclass}       logical, should the new function return the same same ts-boxable output as imputed?
  `x`{#x}                   ts-boxable time series, an object of class `ts`, `xts`, `zoo`, `zooreg`, `data.frame`, `data.table`, `tbl`, `tbl_ts`, `tbl_time`, `tis`, `irts` or `timeSeries`.
  `...`{#...}               arguments passed to subfunction
  ------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

The `ts_` function is a constructor function for tsbox time series
functions. It can be used to wrap any function that works with time
series. The default is set to R base `"ts"` class. `ts_` deals with the
conversion stuff, \'vectorizes\' the function so that it can be used
with multiple time series.

#### Value

A function that accepts ts-boxable time series as an input.

#### See Also

ts_examples, for a few useful examples of functions generated by `ts_`.

[Vignette](https://docs.ropensci.org/tsbox/articles/ts-functions.html)
on how to make arbitrary functions ts-boxable.

#### Examples

``` R
ts_(rowSums)(ts_c(mdeaths, fdeaths))
ts_plot(mean = ts_(rowMeans)(ts_c(mdeaths, fdeaths)), mdeaths, fdeaths)
ts_(function(x) predict(prcomp(x)))(ts_c(mdeaths, fdeaths))
ts_(function(x) predict(prcomp(x, scale = TRUE)))(ts_c(mdeaths, fdeaths))
ts_(dygraphs::dygraph, class = "xts")

## attach series to serach path
ts_attach <- ts_(attach, class = "tslist", reclass = FALSE)
ts_attach(EuStockMarkets)
ts_plot(DAX, SMI)
detach()
```