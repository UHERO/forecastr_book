### fcutils::p()

#### Description

Concatenate dates to obtain period

#### Usage

``` R
p(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- ---------------------------------------------
  `dat1`{#dat1}   date of period start (string: see examples)
  `dat2`{#dat2}   date of period end (string: see examples)
  --------------- ---------------------------------------------

#### Value

string containing date range

#### Examples

``` R
p("2010-01-01", "2020-01-01")
p(20100101, 20200101)
p(2010.1, 2020.4)
p(,2020.4)
p("2010Q1", "2020Q4")
p(2010, 2020) ## for annual period only
```
