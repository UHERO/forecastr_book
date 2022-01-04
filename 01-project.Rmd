# Project setup  

A project is self-contained in a folder (the project folder).  


## A quick overview:  

TL;DR:  
https://kdestasio.github.io/post/r_best_practices/  


## Basic ideas for a reproducible workflow  

Set up your work in projects:  
https://r4ds.hadley.nz/workflow-projects.html

Read section I in WTF:  
https://rstats.wtf/save-source.html  

A good list of consideration for structuring projects:  
https://www.r-bloggers.com/2018/08/structuring-r-projects/  

Use RStudio projects with sub-directories  
-   R - R code.  
-   data/raw - data external to the project.  
-   data/processed - intermediate processed data.  
-   notes - Rmd, and Rmd output, notes, papers, supporting documents, Rmd, etc.  
-   output - reports, tables, etc.  
-   output/plots - plots.  
-   renv - used for library management (don't edit).  
-   man - help files (don't edit).  

Coding Conventions in R  

Follow the `tidyverse` style guide:  
https://style.tidyverse.org/index.html  

Add 4 dashes after a section header for it to show up in the outline:  
```
# *************************
#  setup ----
# *************************
```

Package management with `renv`:  
https://rstudio.github.io/renv/articles/renv.html  

Collaborating with `renv`:  
https://rstudio.github.io/renv/articles/collaborating.html  


## Produce output via R Markdown  

Preference settings:  
https://bookdown.org/yihui/rmarkdown-cookbook/working-directory.html  

Render results from R scripts via Rmd:  
1) source your R code from within Rmd  
https://bookdown.org/yihui/rmarkdown-cookbook/source-script.html  
1*) save output from R script and load it in Rmd setup chunk  
2) only render important results in Rmd chunks  


## Dealing with credentials

Store your credentials and sensitive info in project specific .Renviron file (project's root directory, must end with \n):
```
udaman_token = "<your udaman token>"
udaman_user = "<your user name>"
udaman_pwd = "<your password>"
GITHUB_PAT = "<your github pat>"
```

Retrieve credentials on demand.  
Do not store/assign the retrieved credentials to a variable:  
`req <- httr::GET(url, httr::add_headers(Authorization = paste("Bearer", Sys.getenv("udaman_token"))))`


## Additonal resources:  

Look at the `targets` package for workflow automation:  
https://docs.ropensci.org/targets/index.html  

