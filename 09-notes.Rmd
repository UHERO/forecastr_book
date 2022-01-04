# Notes

## Project setup


Coding Conventions in R:

Basic ideas for a reproducible workflow: 

Use RStudio projects with sub-directories

-   R - R code.
-   data/raw - data external to the project.
-   data/processed - intermediate processed data.
-   notes - Rmd, and Rmd output, notes, papers, supporting documents, Rmd, etc.
-   output - reports, tables, etc.
-   output/plots - plots.
-   renv - used for library management (don't edit).
-   man - help files (don't edit).

Preference settings:


## Git

A quick overview:
https://github.com/llendway/github_for_collaboration/blob/master/github_for_collaboration.md

## Git step by step

If you don't have Git, install it:  
https://happygitwithr.com/install-git.html  

Make sure .gitignore contains the following files:  
.Renviron
.Rprofile


Introduce yourself to Git:  
In the shell (Terminal tab in RStudio):  
git config --global user.name 'Jane Doe'  
git config --global user.email 'jane@example.com'  
git config --global --list  

For more advanced tasks, use GitHub Desktop:  
https://desktop.github.com  

Store your GitHub PAT (Personal Access Token):  
https://happygitwithr.com/https-pat.html  

Use one of three ways to add your project to GitHub:  
Brand new project:  
https://happygitwithr.com/new-github-first.html  
Existing project without version control:  
https://happygitwithr.com/existing-github-first.html  
Existing project under local version control:  
https://happygitwithr.com/existing-github-last.html  

Troubleshooting if RStudio can't detect Git:  
https://happygitwithr.com/rstudio-see-git.html  

Git vocabulary:  
https://happygitwithr.com/git-basics.html  

Remote setups (try to stick to GitHub first discussed above):  
https://happygitwithr.com/common-remote-setups.html  

Useful Git workflows and dealing with conflicts:  
https://happygitwithr.com/workflows-intro.html  
https://happygitwithr.com/push-rejected.html  
https://happygitwithr.com/pull-tricky.html  

Additional resources:  
https://happygitwithr.com/ideas-for-content.html  

Suggested workflow:  
1) Initialize repository on GitHub.com under the UHERO account.  
2) Clone it via RStudio project setup.  
3) Commit changes, pull, resolve issues, push.
3*) If work in a branch (create in RStudio), commit to branch, (pull) push to remote, pull request on GitHub.com from branch to main, merge, delete branch on GitHub.com.


Render results from R scripts via Rmd:
1) source your R code from within Rmd
2) only render important results in Rmd chunks

Use here() from the here package to write file paths 

Suppose you have a dataset in csv format. Use readr::read_csv(here::here("The subfolder where your csv file resides", "The CSV file.csv"))

Do not use setwd() and rm(list = ls())

Do not save the workspace to the .Rdta file

Use library() not require()

Use version control (useful for recording changes between different versions of a file over time - see below for Git integration)

See the resources below: 

Best Practices & Style Guide for Writing R Code: https://github.com/kmishra9/Best-Practices-for-Writing-R-Code   

R Code – Best practices: https://www.r-bloggers.com/2018/09/r-code-best-practices/  

R Best Practices by Krista L. DeStasio: https://kdestasio.github.io/post/r_best_practices/  

Project-oriented workflow: https://www.tidyverse.org/blog/2017/12/workflow-vs-script/  

R coding style best practices: https://www.datanovia.com/en/blog/r-coding-style-best-practices/ 

What They Forgot to Teach You About R by Jennifer Bryan and Jim Hester: https://rstats.wtf/save-source.html  

Conflicted: a new approach to resolving ambiguity: https://www.tidyverse.org/blog/2018/06/conflicted/  

Introduction to renv package: https://rstudio.github.io/renv/articles/renv.html#future-work-1  

Row-oriented workflows in R with the tidyverse: https://github.com/jennybc/row-oriented-workflows#readme  

Structuring R projects: https://www.r-bloggers.com/2018/08/structuring-r-projects/  

Defensive Programming in R: https://bitsandbugs.io/2018/07/27/defensive-programming-in-r/#8 

Nice R code: https://nicercode.github.io/blog/2013-04-05-projects/  

Workflow basics: https://r4ds.had.co.nz/workflow-basics.html 

Namespace package: https://r-pkgs.org/namespace.html  

Writing R packages in RStudio: https://ourcodingclub.github.io/tutorials/writing-r-package/ 

It is dangerous to change state: https://withr.r-lib.org/articles/changing-and-restoring-state.html 

The targets R Package User Manual: https://books.ropensci.org/targets/  

Github and R: 

Install git on the R system from here: https://git-scm.com/downloads  

Go to RStudio → Global Options → Git/SVN → Make sure the box “Enable version control interface for RStudio projects” is checked

Tell RStudio where your Git executable is in the Git/SVN under Global Options

Create a new project in R (make sure the check box “Create a git repository” is checked)

Create a new task file in R (New File → Rscript) and save it as a .R file

To use Git version control on the .R file we need to commit that file

To commit a file with Git in RStudio go to the Git tab in the top right pane in R → Select one or more files by checking the box 

Checking the box means that it is ready to be committed 

To actually commit the file click the “Commit” button  (will open up a commit window)

Include a commit message then click on the second “Commit” button 

For collaboration on Github: 

Load the usethis package and type in ?use_github in the R console

In the Authentication section, click on GitHub personal access token (PAT) 

Click on the button to generate a new token 

Put a Note and use repo permission for your token and then click on “Generate token”

Copy the token ID number (needs to be stored)

Type in edit_r_environ() in the R console and then type in GITHUB_PAT ='copy and paste token ID number here'

In R console type in use_github(protocol ='https', auth_token = Sys.getenv("GITHUB_PAT"))

Run it and will ask if you are sure. Select 3 

This will create a Github repository and will set up the syncing 

Another way to collaborate on Github (easier so follow this!):

Go to http://github.com  and create an account 

Create a new repository and give it a name (click “Add a README file)

Go to R → Install the usethis package and include library(usethis) → Type in use_git_config(user.name = “Your Name on the GitHub account”, user.email = “Your email address on the GitHub account”)

In the newly created repository, click the “Code” button on GitHub. Copy the URL under the “Clone with HTTPS”

Go to R → New Project → Version Control → Git → Repository URL (copy and paste the HTTP URL from your Github repository) - this will connect what’s on the cloud on Github to your computer (also called cloning your repository)

Can start a new R script and would be able to see the Git tab in R

Can commit and include a commit message (will add the files to your depository)

Need to push to fully make the changes go through and to show up on your GitHub account

Under the History tab you would be able to see the changes you made and committed 

Can link the SSH keys from settings on your account and into R under the Git/SVN tab (have to create a SSH RSA key if it has not been created already)

If there is a merge conflict when collaborating on making simultaneous changes together then pull first and then fix the merge conflict. Then can commit by finalizing on which changes to keep by eliminating the “====” and “>>>>” and push it out. The other person will have to pull in the changes in her hand. 

Creating a new branch will allow you to do things on your own. Click on the branch button to create a new branch and name it. A new branch will allow you to make changes on it and work separately on it. The other person will have to pull to see the new branch and your changes on it.  In this way, we can work independently when working together at the same time. Then will have to merge the independent branches. 

Open a pull request by clicking on the Compare and pull request button on the Github site to merge the separate branches together. Can delete your separate branch if desired. Then go to R and pull the changes down. 

For .Renviron have to use specific user credentials such as user name, password, Github and udaman tokens.

The .Rprofile can be ignored in gitignore if there is a problem with different paths across Macs and PCs. 

Resources: 

Happy Git and GitHub for the useR: https://happygitwithr.com/ 

Github for collaboration: https://github.com/llendway/github_for_collaboration/blob/master/github_for_collaboration.md  

My research workflow, based on Github: https://www.carlboettiger.info/2012/05/06/research-workflow.html 

Collaborating with renv: https://rstudio.github.io/renv/articles/collaborating.html  

R style guide: http://adv-r.had.co.nz/Style.html  

UHERO R style guide: 

Use block letters for R file names (because the NAS file server is case sensitive) 

Comment your code

Time Series Modeling: 

Forecasting: Principles and Practice (3rd ed) by Rob J Hyndman and George Athanasopoulos : https://otexts.com/fpp3/index.html 

An Introduction to Statistical Learning (1st ed): https://www.statlearning.com   

Manipulating Time Series Data in R with xts & zoo: https://rstudio-pubs-static.s3.amazonaws.com/288218_117e183e74964557a5da4fc5902fc671.html https://rpubs.com/mpfoley73/504487 Time Series in R, The Power of xts and zoo: https://ugoproto.github.io/ugo_r_doc/time_series_in_r_the_power_of_xts_and_zoo/ xts Cheat Sheet: Time Series in R: https://www.r-bloggers.com/2017/05/xts-cheat-sheet-time-series-in-r/ 

R For Data Science Cheat Sheet by DataCamp: https://s3.amazonaws.com/assets.datacamp.com/blog_assets/xts_Cheat_Sheet_R.pdf

Evaluate the R packages: gets, ARDL, etc.

The gets package is used for Multi-path General-to-Specific (GETS) modelling of the mean and/or variance of a regression, and Indicator Saturation (ISAT) methods for detecting structural breaks in the mean.https://cran.r-project.org/web/packages/gets/index.html

 The ARDL package creates complex autoregressive distributed lag (ARDL) models providing just the order and automatically constructs the underlying unrestricted and restricted error correction model (ECM). It also performs the bounds-test for cointegration as described in Pesaran et al. (2001). https://cran.r-project.org/web/packages/ARDL/index.html https://github.com/Natsiopoulos/ARDL 

Tidy tools for time series modeling under tidyverts: https://tidyverts.org  - The fable package applies tidyverse principles to time series modeling used for forecasting: https://fable.tidyverts.org/ - The tsibble package provides a tidy data structure for time series: https://cran.r-project.org/web/packages/tsibble/index.html - The tsibbledata package provide a different types of datasets in the tsibble data structure: https://cran.r-project.org/web/packages/tsibbledata/index.html - The tsibbletalk package introduces shared key to the tsibble, to easily {crosstalk} between plots on both client and server sides (i.e. with or without shiny): https://cran.r-project.org/web/packages/tsibbletalk/tsibbletalk.pdf- The feasts package provides a collection of features, decomposition methods, statistical summaries and graphics functions for the analysing tidy time series data: https://cran.r-project.org/web/packages/feasts/index.html - The fable.prohphet package provides an interface allowing the prophet forecasting procedure to be used within the fable framework: https://cran.r-project.org/web/packages/fable.prophet/vignettes/intro.html 

The xts or Extensible Time Series package provides an extensible time series class, enabling uniform handling of many R time series classes : https://cran.r-project.org/web/packages/xts/index.html xts: Extensible Time Series: https://cran.r-project.org/web/packages/xts/vignettes/xts.pdf

Think about dummies, breaks, outliers 

Figure out how bimets deals with ragged edge, add-factors, goal search

The bimets is an R package developed with the aim of easing time series analysis and building up a framework that facilitates the definition, estimation and simulation of simultaneous equation models: https://cran.r-project.org/web/packages/bimets/index.htmlbimets - Time Series And Econometric Modeling In R: https://github.com/cran/bimets https://cran.r-project.org/web/packages/bimets/vignettes/bimets.pdf

Structural Equation Models (SEM): https://rviews.rstudio.com/2021/01/22/sem-time-series-modeling/

Look at tidy models 

The tidymodels package is a collection of packages for modeling and machine learning using tidyverse principles: https://www.tidymodels.org

Port the Gekko code into R: http://t-t.dk/gekko/

Look at DiagrammeR package, also the Gantt charts it can produce

https://rich-iannone.github.io/DiagrammeR/ 

A Beginner’s Guide to Learning R: 

A (very) short introduction to R: https://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf

Rstudio Education: https://github.com/rstudio-education 

Remaster the tidyverse: https://github.com/rstudio-education/remaster-the-tidyverse 

Introduction to R and Rstudio: https://jules32.github.io/2016-07-12-Oxford/R_RStudio/ 

An intro to R for new programmers: https://rforcats.net 

fasteR: Fast Lane to Learning R!: https://github.com/matloff/fasteR 

RStudio Cheatsheets: https://rstudio.com/resources/cheatsheets/ 

R for Data Science: https://r4ds.had.co.nz 

Data wrangling, exploration, and analysis with R: https://stat545.com 

R Markdown: The Definitive Guide: https://bookdown.org/yihui/rmarkdown/ 

Data Visualization with R: https://rkabacoff.github.io/datavis/ 

Modern R with the tidyverse: https://b-rodrigues.github.io/modern_R/  

R Cookbook, 2nd Edition: https://rc2e.com  

Advanced R by Hadley Wickham: http://adv-r.had.co.nz  

UC Business Analytics R Programming Guide: http://uc-r.github.io/descriptive  

R Programming for Data Science: https://bookdown.org/rdpeng/rprogdatascience/  

Hands-On Programming with R: https://rstudio-education.github.io/hopr/ 

Efficient R programming: https://csgillespie.github.io/efficientR/index.html 

R for Fledglings: http://www.uvm.edu/~tdonovan/RforFledglings/index.html 

R Intermediate Level (includes applications): 

Advanced Statistical Computing: https://bookdown.org/rdpeng/advstatcomp/  

Feature Engineering and Selection: A Practical Approach for Predictive Models: http://www.feat.engineering/index.html  

Advanced Quantitative Methods: https://uclspp.github.io/PUBLG088/index.html  

Principles of Econometrics with  R: https://bookdown.org/ccolonescu/RPoE4/  

Modern Data Analysis for Economics: https://jiamingmao.github.io/data-analysis/Resources/  

Data Science for Economists: https://github.com/uo-ec607/lectures   

Data Science for Psychologists: https://bookdown.org/hneth/ds4psy/10-time.html   

Rewriting R code in C++: https://adv-r.hadley.nz/rcpp.html 

Writing R Extensions: https://cran.rstudio.com/doc/manuals/r-devel/R-exts.html 

Other R packages for data analysis:

The data.table package is used for fast aggregation of large data (e.g. 100GB in RAM), fast ordered joins, fast add/modify/delete of columns by group using no copies at all, list columns, friendly and fast character- separated-value read/write: https://cran.r-project.org/web/packages/data.table/  

The mlr3 (Lang et al. 2019) package and ecosystem provide a generic, object-oriented, and extensible framework for classification, regression, survival analysis, and other machine learning tasks for the R: https://mlr3book.mlr-org.com  

purr package tutorial: https://jennybc.github.io/purrr-tutorial/ 

 

Data Visualization with R:

Data Analysis and Visualization Using R: http://varianceexplained.org/RData/   

Data Analysis and Visualization in R for Ecologists: https://datacarpentry.org/R-ecology-lesson/   

Data Visualization with R by Rob Kabacoff: https://rkabacoff.github.io/datavis/  

R Graphics Cookbook, 2nd edition: https://r-graphics.org 

ggplot2: elegant graphics for data analysis: https://ggplot2-book.org 
