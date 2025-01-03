### fcutils::pq()

#### Description

Concatenate dates formatted as yyyyQq or yyyy.q to obtain period

#### Usage

``` R
pq(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- -------------------------------------------------
  `dat1`{#dat1}   date of period start (string: yyyyQq or yyyy.q)
  `dat2`{#dat2}   date of period end (string: yyyyQq or yyyy.q)
  --------------- -------------------------------------------------

#### Value

string containing date range

#### Examples

``` R
pq("2010Q1", "2020Q4")
pq(2010.1, 2020.4)
pq(2010.1, )
pq(, 2010.1)
```
