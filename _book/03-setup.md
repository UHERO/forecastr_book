# Setup of the forecastr project

The `setup.R` file contains general information used throughout the project. The contents are listed below.  

## Start with a clean slate

First remove all objects from global environment:  
`rm(list = ls())`

If only some objects need to be removed, search for them via wildcards:  
`rm(list = ls(pattern = glob2rx("*__*")))`

Detach all loaded packages:
```
if (!is.null(names(sessionInfo()$otherPkgs))) {
invisible(
  suppressMessages(
    suppressWarnings(
      lapply(
        paste("package:", names(sessionInfo()$otherPkgs), sep=""), 
        detach, 
        character.only = TRUE, 
        unload = TRUE
        )
      )
    )
  )
}
```


## Packages

The setup file clarifies its own location relative to the project root and loads the necessary packages.  

Navigate within a project using the `here()` package. Start by specifying:  
`here::i_am("R/setup.R")`

Then load necessary packages  
```
library(here) # navigation within the project
library(conflicted) # detect conflicts across packages
library(tidyverse) # a set of frequently used data-wrangling tools
library(magrittr) # more than just pipes
library(lubridate) # dealing with dates
library(tsbox) # dealing with time series
# library(bimets)
```

Detect conflicts across packages and assign preferences  
```
conflict_scout()
conflict_prefer("filter", "dplyr") # dplyr v stats
conflict_prefer("first", "dplyr") # dplyr v xts
conflict_prefer("lag", "dplyr") # dplyr v stats
conflict_prefer("last", "dplyr") # dplyr v xts
conflict_prefer("extract", "magrittr") # magrittr vs tidyr
```

Verify top level project directory  
`here()`


## Package descriptions

Use the `here` package to deal with file paths:  
https://here.r-lib.org  

Suppose you have a dataset in csv format. Use:  
`readr::read_csv(here::here("<The subfolder where your csv file resides>", "<The CSV file.csv>"))`  

Only load essential packages with many useful functions (don't load a whole package to access a single function).  
Refer to individual functions in not loaded packages by `namespace::function()`  

Resolve conflicts across multiple packages with `conflicted`:  
https://conflicted.r-lib.org  

Core `tidyverse` packages:  
https://www.tidyverse.org  

Non-core `tidyverse` packages (need to be loaded separately):  
https://magrittr.tidyverse.org  
https://lubridate.tidyverse.org  

Time series tools in `tsbox` (learn them and use them, very useful):  
https://www.tsbox.help  

Forecasting with multi-equation behavioral models (only load `bimets` if actually doing forecasts, no need for data manipulation):  
https://cran.r-project.org/web/packages/bimets/index.html  

`bimets` depends on `xts` (if not loaded, can access necessary functions via `xts::function()`):  
https://cran.r-project.org/web/packages/xts/index.html  

Prefer using `tsbox` and `tidyverse` functions whenever possible, but understand the components and behavior of `xts` objects:
https://rc2e.com/timeseriesanalysis   


## Additional info in setup

Define project-wide constants:
```
bnk_start <- ymd("1900-01-01")
bnk_end <- ymd("2060-12-31")
```

Load user defined utility functions (details in next section):  
`source(here("R", "util_funs.R"))`


