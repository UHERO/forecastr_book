### fcutils::make_xts()

#### Description

Create xts and fill with values

#### Usage

``` R
make_xts(start = bnk_start, end = NULL, per = "year", val = NA_real_)
```

#### Arguments

  ----------------- ------------------------------------------------------------------------------------------------------------------------------
  `start`{#start}   date of series start (character: \"yyyy-mm-dd\", \"yyyyqq\", \"yyyy\")
  `end`{#end}       date of series end (character: \"yyyy-mm-dd\", \"yyyyqq\", \"yyyy\")
  `per`{#per}       periodicity of series (character: \"year\" - default) if date format of start is quarterly, automatically set to \"quarter\"
  `val`{#val}       values to fill in (numeric scalar, vector, or tibble)
  ----------------- ------------------------------------------------------------------------------------------------------------------------------

#### Details

when end is missing, but val is a vector of more than one element, the
end date is automatically determined by the length of the val vector. if
end is missing and val is a scalar, the end date is set to bnk_end. if
end is missing the remaining arguments have to be named. if val is a
tibble, the end date is automatically determined by the number of rows
in the tibble.

#### Value

an xts series

#### Examples

``` R
make_xts()
make_xts(val = 0, per = "m")
make_xts(start = 20100101, per = "quarter", val = 0)
make_xts(start = 2010.1, per = "q", val = 1:10)
make_xts(2010.1, val = 1:10) ## automatically set per = "quarter"
make_xts(start = "2010-01-01", per = "m", val = 0)
make_xts(start = 201001, per = "q",
         val = tibble::tibble(E_NF_HON = c(1:10), ECT_HI = c(11:20)))
```
