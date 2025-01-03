### fcutils::gen_table()

#### Description

Generate a table with time series

#### Usage

``` R
gen_table(
  x,
  tbl_start = as.character(Sys.Date() - lubridate::years(10)),
  tbl_end = as.character(Sys.Date() + lubridate::years(2)),
  percent = "pc",
  time_across = TRUE,
  tbl_height = 800,
  save_loc = NULL
)
```

#### Arguments

  ----------------------------- -------------------------------------------------------------------------------------
  `x`{#x}                       a ts-boxable object
  `tbl_start`{#tbl_start}       start period for table
  `tbl_end`{#tbl_end}           end period for table
  `percent`{#percent}           what type of percent should be added (\"none\", \"pc\" (default), \"pcy\", \"pca\")
  `time_across`{#time_across}   should time be in column headers and variable names in first column (default TRUE)
  `tbl_height`{#tbl_height}     the height of the table in px (default 800)
  `save_loc`{#save_loc}         file path for saving table incl. extension (\"html\" or \"csv\") (default NULL)
  ----------------------------- -------------------------------------------------------------------------------------

#### Value

table formatted for output

#### Examples

``` R
quarterly_data_example %>%
  tsbox::ts_long() %>%
  tsbox::ts_tslist() %>%
  gen_table()
gen_table(quarterly_data_example)
gen_table(quarterly_data_example, percent = "none")
gen_table(quarterly_data_example, percent = "pcy", time_across = FALSE)

gen_table(quarterly_data_example,
  percent = "pcy",
  time_across = FALSE, save_loc = "~/Downloads/temp.csv"
)
gen_table(quarterly_data_example,
  percent = "pcy", time_across = TRUE,
  save_loc = "~/Downloads/temp.html"
)
```
