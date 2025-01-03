### fcutils::span()

#### Description

Specify span of time series (wrapper around tsbox::ts_span())

#### Usage

``` R
span(x, start = NULL, end = NULL, template = NULL, extend = FALSE)
```

#### Arguments

  ----------------------- ----------------------------------------------------------------------------------------------------
  `x`{#x}                 ts-boxable object to filter by span
  `start`{#start}         start date (see examples)
  `end`{#end}             end date (see examples)
  `template`{#template}   ts-boxable time series (see tsbox::ts_span)
  `extend`{#extend}       logical. If true, the start and end values are allowed to extend the series (by adding NA values).
  ----------------------- ----------------------------------------------------------------------------------------------------

#### Value

filtered object of the same type as the input

#### Examples

``` R
quarterly_data_example |>
  span(2010.1)
quarterly_data_example |>
  span(2010.1, 2010.4)
quarterly_data_example |>
  span("2010-01-01", "2010-12-31")
```
