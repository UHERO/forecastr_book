# Best practices for time series data manipulation


Use capital letters for series names. Special characters in variable names require putting the name between backticks (e.g. `N@US.A`). 
Eliminate special characters using a long tibble.
```
hist_q_mod <- hist_q %>%
  ts_tbl() %>%
  mutate(id = str_replace_all(id, c("@" = "_AT_", "\\." = "_")))
  
# revert back to udaman notation
hist_q <- hist_q_mod %>%
  ts_tbl() %>%
  mutate(id = str_replace_all(id, c("_AT_" = "@", "_Q" = "\\.Q")))
```

Use the `xts` format whenever possible. Observations in a multivariate `xts` can be accessed by time and series name in two ways: `mul_var_xts[time, ser_name]` or `mul_var_xts$ser_name[time]`.  

Make sure all series are defined on the same range (default start = bnk_start, end = bnk_end). Take advantage of `make_xts()` (and its defaults, e.g. start and end period).  
```
import_xts <- read_csv(here("data/raw", str_glue("{exp_id_a}.csv"))) %>%
  arrange(time) %>%
  ts_long() %>%
  ts_xts() %>%
  ts_c(
    temp = make_xts(per = "year") # temporary variable to force start and end in import_xts
  ) %>%
  extract(, str_subset(colnames(.), "temp", negate = TRUE)) # remove temp
```

Don't break up multivariate time series (think databank) into individual series in the global environment. 

If referring directly to a series with a static name, use the `bank$series` notation (this can be used on both the right and the left hand side of the assignment, while `bank[, series]` can only be used for existing series in bank).  
```
# find the last value in history
dat_end <- find_end(hist_q$N_AT_US_Q)
# same as
dat_end <- find_end(hist_q[, N_AT_US_Q])
```

Use `[p()]` to select a period in `xts` objects, otherwise use `ts_span()`.
```
# extend series with addfactored level
sol_q$N_AT_US_SOLQ <- hist_q$N_AT_US_Q[p("", dat_end)] %>%
  ts_bind(sol_q$NCEN_AT_US_SOLQ[p(dat_end, "")] +
    as.numeric(sol_q$N_AT_US_SOLQ_ADDLEV[dat_end]))
    
# addfactor for growth
sol_q$N_AT_US_SOLQ_ADDGRO[p(dat_end + qtrs(1), dat_end + qtrs(4))] <- -0.35

# extend history using growth rate
sol_q$N_AT_US_SOLQ <- sol_q$N_AT_US_SOLQ[p("", dat_end)] %>%
  ts_chain(ts_compound(sol_q$N_AT_US_SOLQ_GRO[p(dat_end, "")]))
```

The `bank[,seriesname]` notation only works for *existing* `xts` series on the left of the assignment (it can also be used on the right). `seriesname` can be determined at runtime
```
# initialize the lhs series in the "bank"
hist_a$temp <- make_xts()
names(hist_a)[names(hist_a) == "temp"] <- str_glue("E{ser_i}_AT_{cnty_i}_ADD")

# calculate expression and assign to lhs
hist_a[, str_glue("E{ser_i}_AT_{cnty_i}_SH")] <- 
  (hist_a[, str_glue("E{ser_i}_AT_{cnty_i}")] / hist_a[, str_glue("E_NF_AT_{cnty_i}")])
```

Alternatively, make multiple series in *bank* available by `%$%` and retrieve inividual series by `get_var()` on the right.
```
hist_a[, str_glue("E{ser_i}_AT_{cnty_i}_SH")] <- hist_a %$%
  (get_var("E{ser_i}_AT_{cnty_i}") / get_var("E_NF_AT_{cnty_i}"))
```

Bimets requires data in a particular `tslist` format. Convert `xts` to `tslist` using `ts_tslist()`.  
```
# store series as tslist
hist_a_lst <- hist_a %>% 
  ts_tslist() %>% 

# convert series to bimets format
hist_a_bimets <- hist_a_lst %>%
  map(as.bimets)

# bimets strips the attributes, need to reset them for further manipulation by tsbox
hist_a <- hist_a_bimets %>% 
  set_attr("class", c("tslist", "list")) %>% 
  ts_xts()
```

For series collected in a `tslist` on the left of the assignment use the `bank[[seriesname]]` notation (it can also be used on the right). Here the lhs series `seriesname` does not need to exist, and it might easier to work with `tslist` than `xts` when variable names are determined at runtime. 
```
# similar to above with a tslist variable
hist_a_lst[[str_glue("E{ser_i}_AT_{cnty_i}_ADD")]] <- hist_a_lst %$%
  (get_var("E{ser_i}_AT_{cnty_i}") - get_var("E_NF_AT_{cnty_i}"))
```

## Harness the power of tsbox

Use the converter functions in [`tsbox`](https://www.tsbox.help/reference/index.html) to shift between various data types (`ts_tbl()`, `ts_xts()`, `ts_ts()`, `ts_tslist()`) and reshaping to the long and wide format (`ts_long()`, `ts_wide()`). `tsbox` further contains funtions for time period selection (`ts_span()`), merging and extension operations (`ts_c()`, `ts_bind()`, `ts_chain()`), transformations (`ts_lag()`, `ts_pc()`, `ts_pca()`, `ts_pcy()`, `ts_diff()`, `ts_diffy()`), and index construction (`ts_compound()`, `ts_index()`). Consider these before turning for solutions to `dplyr` or `tidyr`.
