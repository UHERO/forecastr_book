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

Use the `xts` format whenever possible. Take advantage of `make_xts()` (and its defaults, e.g. start and end period).  

Make sure all series are defined on the same range (default start = bnk_start, end = bnk_end).  
```
make_xts(per = "year") %>%   # using default range
  ts_tbl() %>% 
  select(time) %>% 
  left_join(read_csv(here("data/raw", str_glue("{exp_id_a}.csv"))), by = c("time" = "time")) %>%
  arrange(time) %>%
  ts_long() %>%
  ts_xts()
```

Don't break up multivariate time series (think databank) into individual series. 
If referring directly to an individual series, use the `bank$series` notation.  
```
# find the last value in history
dat_end <- find_end(hist_q$N_AT_US_Q)
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

REVISE: CONSIDER USING ts_c().

When determinig variable names dynamically, make multiple series in *bank* available by `%$%` and retrieve inividual series by `get_var()`. 
For *existing* `xts` series on the left of the assignment use the `bank[,seriesname]` notation (it can also be used on the right).
```
# calculate the difference between history and forecast
hist_a[, str_glue("E{ser_i}_AT_{cnty_i}_ADD")] <- hist_a %$%
  (
     get_var("E{ser_i}_AT_{cnty_i}") -
      get_var("E{ser_i}_AT_{cnty_i}_SH") *
        get_var("E_NF_AT_{cnty_i}") *
        (get_var("E{ser_i}_AT_NBI") / `E_NF_AT_NBI`)
  )
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

For series collected in a `tslist` on the left of the assignment use the `bank[[seriesname]]` notation (it can also be used on the right).
```
# calculate the difference between history and forecast
hist_a_lst[[str_glue("E{ser_i}_AT_{cnty_i}_ADD")]] <- hist_a_lst %$%
  (
     get_var("E{ser_i}_AT_{cnty_i}") -
      get_var("E{ser_i}_AT_{cnty_i}_SH") *
        get_var("E_NF_AT_{cnty_i}") *
        (get_var("E{ser_i}_AT_NBI") / `E_NF_AT_NBI`)
  )
```

