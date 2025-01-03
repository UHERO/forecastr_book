### fcutils::pm()

#### Description

Concatenate dates formatted as yyyyMm or yyyy.m to obtain period

#### Usage

``` R
pm(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- -------------------------------------------------
  `dat1`{#dat1}   date of period start (string: yyyyMm or yyyy.m)
  `dat2`{#dat2}   date of period end (string: yyyyMm or yyyy.m)
  --------------- -------------------------------------------------

#### Value

string containing date range

#### Examples

``` R
pm("2010M1", "2020M4")
pm(2010.1, 2020.4)
pm(2010.1, )
pm(, 2010.1)
```
