### fcutils::nmons()

#### Description

Calculate number of months between two dates yyyyMm, yyyy.m or
yyyy-mm-dd

#### Usage

``` R
nmons(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- --------------------------------------------------------------
  `dat1`{#dat1}   date of period start (string: yyyyMm, yyyy.m, or yyyy-mm-dd)
  `dat2`{#dat2}   date of period end (string: yyyyMm, yyyy.m, or yyyy-mm-dd)
  --------------- --------------------------------------------------------------

#### Details

The endpoints are included in the result so subtract one for time
difference. Also, the result is rounded down so partial months are not
counted. See examples.

#### Value

numeric length of date range in months

#### Examples

``` R
nmons("2010M1", "2010M2")
nmons(2010.1, 2010.4)
nmons("2010-01-15", "2010-04-15")
nmons("2010-01-15", "2010-04-18")
nmons("2010-01-15", "2010-04-12")
```
