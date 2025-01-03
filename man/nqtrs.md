### fcutils::nqtrs()

#### Description

Calculate number of quarters between two dates yyyyQq, yyyy.q or
yyyy-mm-dd

#### Usage

``` R
nqtrs(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- --------------------------------------------------------------
  `dat1`{#dat1}   date of period start (string: yyyyQq, yyyy.q, or yyyy-mm-dd)
  `dat2`{#dat2}   date of period end (string: yyyyQq, yyyy.q, or yyyy-mm-dd)
  --------------- --------------------------------------------------------------

#### Details

The endpoints are included in the result so subtract one for time
difference. Also, the result is rounded down so partial quarters are not
counted. See examples.

#### Value

numeric length of date range in quarters

#### Examples

``` R
nqtrs("2010Q1", "2020Q4")
nqtrs(2010.1, 2020.4)
nqtrs("2010-01-01", "2020-10-01")
nqtrs("2010-02-01", "2020-11-01")
nqtrs("2010-02-01", "2020-10-01")
nqtrs("2010-01-01", "2020-11-01")
```
