### fcutils::set_udaman_token()

#### Description

Set udaman token for API access

#### Usage

``` R
set_udaman_token(key)
```

#### Arguments

  ------------- -----------------------------------
  `key`{#key}   a string containing 44 characters
  ------------- -----------------------------------

#### Details

Save the token in .Renviron as udaman_token = key.

#### Value

true if setting the token in .Renviron succeeded

#### Examples

``` R
set_udaman_token("-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=")
```
