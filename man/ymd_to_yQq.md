### fcutils::ymd_to_yQq()

#### Description

Convert dates from yyyy-mm-dd to yyyyQqq format

#### Usage

``` R
ymd_to_yQq(x)
```

#### Arguments

  --------- ----------------------------
  `x`{#x}   dates (string: yyyy-mm-dd)
  --------- ----------------------------

#### Value

formatted dates (string: yyyyQqq)

#### Examples

``` R
ymd_to_yQq(c("2010-01-01", "2020-10-01"))
ymd_to_yQq(c("2010-01-01", "2020-10-01")) |> lubridate::yq()
```
