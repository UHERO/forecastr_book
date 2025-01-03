### fcutils::rename_udaman()

#### Description

Format series names to udaman format (mnemonic@loc.freq)

#### Usage

``` R
rename_udaman(ser_in, freq = NULL)
```

#### Arguments

  ------------------- ----------------------------------------------------------------------------------------------------------------------------
  `ser_in`{#ser_in}   series names (character \"mnemonic_loc\", \"mnemonic_AT_loc_freq\", \"mnemonic\_\_loc_freq\", mnemonic@loc.freq\")
  `freq`{#freq}       frequency of the series, required if not contained in the series name (character \"D\", \"W\", \"M\", \"Q\", \"S\", \"A\")
  ------------------- ----------------------------------------------------------------------------------------------------------------------------

#### Value

series names following udaman convention \"mnemonic@loc.freq\"

#### Examples

``` R
rename_udaman(c("E_NF_HI", "ECT_HI", "E_TU_HAW"), freq = "M")
rename_udaman(c("E_NF__HI_M", "ECT__HI_M", "VAP__HAW_W"))
rename_udaman(c("E_NF_AT_HI_M", "ECT_AT_HI_M", "VAP_AT_HAW_W"))
rename_udaman(c("E_NF@HI.M", "ECT@HI.M", "VAP@HAW.W"))
rename_udaman(c("SH_US@HI.M", "SH_JP__HON_M"))
quarterly_data_example |> dplyr::rename_with(~ rename_udaman(., freq = "M"), .cols = -1)
quarterly_data_example |> dplyr::rename_with(rename_udaman, freq = "M", .cols = !time)
quarterly_data_example |>
  tsbox::ts_long() |>
  dplyr::mutate(id = rename_udaman(id, freq = "M")) |>
  tsbox::ts_xts()
```
