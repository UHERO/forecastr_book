### fcutils::qtrs()

#### Description

Convert period in quarters to period in months

#### Usage

``` R
qtrs(nr_quarters)
```

#### Arguments

  ----------------------------- ----------------------------------------
  `nr_quarters`{#nr_quarters}   number of quarters in period (integer)
  ----------------------------- ----------------------------------------

#### Value

number of months in period

#### Examples

``` R
qtrs(3)
lubridate::ymd("2020-01-01") + qtrs(3)
```
