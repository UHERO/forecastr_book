### fcutils::py()

#### Description

Concatenate dates formatted as yyyy to obtain period

#### Usage

``` R
py(dat1 = "", dat2 = "")
```

#### Arguments

  --------------- ------------------------------------------------
  `dat1`{#dat1}   year of period start (string or numeric: yyyy)
  `dat2`{#dat2}   year of period end (string or numeric: yyyy)
  --------------- ------------------------------------------------

#### Value

string containing date range

#### Examples

``` R
py("2010", "2020")
py(2010, 2020)
py(2010, )
py(, 2010)
```
