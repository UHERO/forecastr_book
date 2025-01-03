### fcutils::pcmp()

#### Description

Calculate multi-period average growth

#### Usage

``` R
pcmp(x, lag = 4, comp_freq = 1)
```

#### Arguments

  ------------------------- -----------------------------------------------------------------------------------------
  `x`{#x}                   ts-boxable object for which growth is calculated (in levels)
  `lag`{#lag}               number of periods over which growth is calculated
  `comp_freq`{#comp_freq}   compounding frequency (1 if period by period, 4 if annualized for quarterly data, etc.)
  ------------------------- -----------------------------------------------------------------------------------------

#### Value

object of the same type as the input ontaining the average growth of x
(in percent)

#### Examples

``` R
quarterly_data_example |>
  pcmp(20) |>
  tail()
quarterly_data_example |>
  pcmp(4, 4) |>
  tail()
quarterly_data_example |>
  pcmp(1, 4) |>
  tail()
```
