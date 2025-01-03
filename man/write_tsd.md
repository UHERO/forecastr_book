### fcutils::write_tsd()

#### Description

Save a ts-boxable object in tsd format

#### Usage

``` R
write_tsd(x, file)
```

#### Arguments

  --------------- --------------------------------------------------------------------
  `x`{#x}         a ts-boxable object (only M, Q, A frequency)
  `file`{#file}   character string denoting the location and name of the output file
  --------------- --------------------------------------------------------------------

#### Value

nothing (silently save the contents of the tsd file to a user defined
location)

#### Examples

``` R
quarterly_data_example |> write_tsd("out.tsd")
```
