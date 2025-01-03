# rd_folder <- stringr::str_c(getwd(), "/man/")
rd_folder <- "/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/fcutils/man/"
# rd_folder <- "/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/tsbox-main/man/"
# rd_folder <- "/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/UHEROtheme-main/man/"
html_folder <- "/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/forecastr_book/man/"
# html_folder <- "/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/forecastr_book/man_theme/"

rd_list <- rd_folder |> fs::dir_ls()

html_list <- rd_list |>
  purrr::map(~ tools::Rd2HTML(.x, out = .x |>
                                fs::path_ext_set("html") |>
                                stringr::str_replace(rd_folder, html_folder))) |>
  unlist(use.names = FALSE)

md_list <- html_list |>
  fs::path_ext_set("md")

html_list |> purrr::map(~ rmarkdown::pandoc_convert(.x, "markdown", output = .x |>
                                                      fs::path_ext_set("md")))

md_list |>
  purrr::map(
    ~ readr::read_lines(.x) |>
      stringr::str_replace("# ", "## ") |>
      stringr::str_replace("^### .*", stringr::str_glue("### fcutils::{.x |> fs::path_file() |> fs::path_ext_remove()}()")) |>
      stringr::str_replace("grapes-plus-equals-grapes", "`%+=%`") |>
      # stringr::str_replace("^### .*", stringr::str_glue("### tsbox::{.x |> fs::path_file() |> fs::path_ext_remove()}()")) |>
      # stringr::str_replace("^### .*", stringr::str_glue("### uherotheme::{.x |> fs::path_file() |> fs::path_ext_remove()}()")) #|>
      tail(-6) |>
      head(-2) |>
      readr::write_lines(.x)
  )

"/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/UHEROtheme-main/README.md" |>
  readr::read_lines() |>
  stringr::str_replace("# ", "## ") |>
  readr::write_lines("/Users/peterfuleky/Documents/UHERO/UHERO_work/forecast/forecastr_book/man/README.md")


