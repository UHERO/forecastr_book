### fcutils::addf()

#### Description

Create xts addfactor

#### Usage

``` R
addf(
  start = bnk_start,
  end = bnk_end,
  from = 0,
  to = 0,
  ser_name = "value",
  per = "year"
)
```

#### Arguments

  ----------------------- ------------------------------------------------------------------------------------------------------------------------------
  `start`{#start}         start date of linear interpolation (character: \"yyyy-mm-dd\", \"yyyyqq\", \"yyyy\")
  `end`{#end}             end date of linear interpolation (character: \"yyyy-mm-dd\", \"yyyyqq\", \"yyyy\")
  `from`{#from}           first value for linear interpolation (numeric)
  `to`{#to}               last value for linear interpolation (numeric)
  `ser_name`{#ser_name}   name of the xts series (string)
  `per`{#per}             periodicity of series (character: \"year\" - default) if date format of start is quarterly, automatically set to \"quarter\"
  ----------------------- ------------------------------------------------------------------------------------------------------------------------------

#### Details

this is a wrapper around make_xts with some additional functionality.
the start and end dates specify the span of the non-zero add-factor
value. the remaining period between start and end is filled with zeros.

#### Value

a single xts series spanning bnk_start-bnk_end

#### Examples

``` R
addf()
addf(201002, 201504, 1, 2)
addf(20100101, 20601201, 1, 2, per = "month")
addf(20100101, from = 1, to = 2, per = "quarter")
addf(2010.2, 2015.4, 1, 2, "ECT_HI")
```
