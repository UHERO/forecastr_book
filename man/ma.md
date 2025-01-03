### fcutils::ma()

#### Description

Backward looking moving average

#### Usage

``` R
ma(x, order)
```

#### Arguments

  ----------------- ---------------------------------------------------------------------------------------
  `x`{#x}           ts-boxable object
  `order`{#order}   numeric order (window length) of moving average, includes contemporaneous observation
  ----------------- ---------------------------------------------------------------------------------------

#### Value

object of the same type as the input containing moving average

#### Examples

``` R
quarterly_data_example |>
  ma(4) |>
  head()
```
