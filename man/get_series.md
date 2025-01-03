### fcutils::get_series()

#### Description

Download a set of series from udaman using series names

#### Usage

``` R
get_series(
  ser_id_vec,
  format = "wide",
  expand,
  raw = TRUE,
  rename = "compact",
  freq = NULL,
  descr = FALSE,
  public = FALSE
)
```

#### Arguments

  --------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `ser_id_vec`{#ser_id_vec}   vector of series names (character)
  `format`{#format}           \"wide\" (default) or \"long\" or \"xts\"
  `expand`{#expand}           DEPRECATED, USE raw INSTEAD \"true\" (default) or \"raw\" (\"true\" downloads formatted data, \"raw\" downloads raw units)
  `raw`{#raw}                 TRUE (default) or FALSE (TRUE downloads raw data, FALSE downloads scaled and rounded data)
  `rename`{#rename}           \"compact\" (default), \"full\", \"no\". \"compact\": @ replaced by \_ and no frequency; \"full\": @ replaced by *AT* and . by \_; \"no\": no renaming, keep UDAMAN names
  `freq`{#freq}               if frequency is missing from series names (or want to modify freq in existing names) specify frequency (character), e.g. \"M\".
  `descr`{#descr}             if TRUE add to the udaman series name the series description in parentheses (default: FALSE)
  `public`{#public}           if TRUE use the public API interface - does not require VPN (default: FALSE)
  --------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Details

This function requires permission to access UDAMAN. Store the udaman
token in the .Renviron file using the following format: udaman_token =
\"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\" Or using
fcutils::set_udaman_token(\"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\") Or
store the udaman token among your credentials (e.g. keychain) using
keyring: keyring::key_set_with_value(service = \"udaman_token\",
password = \"-ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890=\")

#### Value

time and data for all series combined in an object specified by the
format option

#### Examples

``` R
get_series(c("VISNS@HI.M", "VAPNS@HI.M"), raw = TRUE)
get_series(c("VEXP_RB@HI.M"))
get_series(c("VISNS@HI.M", "VAPNS@HI.M"), public = TRUE)
get_series(c("VISNS@HI.M", "VISUSNS@HI.M"), freq = "Q")
get_series(c("VISNS@HI.M", "VAPNS@HI.M"), format = "xts")
get_series(c("VISNS@HI.M"), format = "xts")
get_series(c("VISNS@HI.M"), format = "xts", descr = TRUE)
get_series(c("E_NF_HI", "ECT_HI", "E_TU_HAW"), freq = "M")
get_series(c("E_NF__HI_M", "ECT__HI_M", "VAP__HI_W"))
get_series(c("E_NF_AT_HI_M", "ECT_AT_HI_M", "VAP_AT_HI_W"))
```
