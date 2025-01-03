### fcutils::to_ymd()

#### Description

Parse strings into dates in yyyy-mm-dd format

#### Usage

``` R
to_ymd(x)
```

#### Arguments

  --------- -------------------------------------------------
  `x`{#x}   string (string: yyyymmdd, yyyyqq, yyyy.q, yyyy)
  --------- -------------------------------------------------

#### Value

formatted dates (yyyy-mm-dd)

#### Examples

``` R
to_ymd(c("2010.0211", 202002, 2020.2, "2020"))
```
