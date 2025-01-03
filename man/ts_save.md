### tsbox::ts_save()

#### Description

Save Previous Plot

#### Usage

``` R
ts_save(
  filename = tempfile(fileext = ".pdf"),
  width = 10,
  height = 5,
  device = NULL,
  open = TRUE
)
```

#### Arguments

  ----------------------- -------------------------------------------
  `filename`{#filename}   filename
  `width`{#width}         width
  `height`{#height}       height
  `device`{#device}       device
  `open`{#open}           logical, should the saved plot be opened?
  ----------------------- -------------------------------------------

#### Value

invisible `TRUE`, if successful

#### Examples

``` R
ts_plot(AirPassengers)
tf <- tempfile(fileext = ".pdf")
ts_save(tf)
unlink(tf)

```
