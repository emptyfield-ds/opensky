#' Use a blank R Markdown file with reasonable settings
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_blank_rmd <- function(save_as, open = is_interactive()) {
  check_installed(c("rmarkdown", "ragg"))
  usethis::use_template(
    "blank_rmd.Rmd",
    save_as = fs::path_ext_set(save_as, "Rmd"),
    open = open,
    package = "opensky"
  )
}
