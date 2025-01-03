### fcutils::get_series_exp()

#### Description

Download series listed in an export table from udaman

#### Usage

``` R
get_series_exp(
  exp_id,
  format = "wide",
  expand,
  raw = TRUE,
  rename = "compact",
  descr = FALSE,
  public = FALSE,
  save_loc = NULL
)
```

#### Arguments

  ----------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `exp_id`{#exp_id}       export id (character or numeric)
  `format`{#format}       \"wide\" (default) or \"long\" or \"xts\"
  `expand`{#expand}       DEPRECATED, USE raw INSTEAD \"true\" or \"raw\" (\"true\" downloads formatted data, \"raw\" downloads raw units)
  `raw`{#raw}             TRUE (default) or FALSE (TRUE downloads raw data, FALSE downloads scaled and rounded data)
  `rename`{#rename}       \"compact\" (default), \"full\", \"no\". \"compact\": @ replaced by \_ and no frequency; \"full\": @ replaced by *AT* and . by \_; \"no\": no renaming, keep UDAMAN names
  `descr`{#descr}         if TRUE add to the udaman series name the series description in parentheses (default: FALSE)
  `public`{#public}       if TRUE use the public API interface - does not require VPN (default: FALSE)
  `save_loc`{#save_loc}   file path for saving data incl. extension (\"html\" or \"csv\") (default NULL)
  ----------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

This function requires permission to access UDAMAN. Store the udaman
token in the .Renviron file using the following format: udaman_token =
\"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\" Or using
fcutils::set_udaman_token(\"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\") Or
store the udaman token among your credentials (e.g. keychain) using
keyring: keyring::key_set_with_value(service = \"udaman_token\",
password = \"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\")

#### Value

time and data for all series combined in a tibble

#### Examples

``` R
get_series_exp(exp_id = 74)
get_series_exp(74, format = "xts")
```
