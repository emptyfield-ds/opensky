#' Create `setup.R` in the testthat file
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_testthat_setup <- function(open = is_interactive()) {
  stopifnot(fs::dir_exists(path("tests", "testthat")))
  usethis::use_template(
    "setup.R",
    save_as = path("tests", "testthat", "setup.R"),
    open = open,
    package = "opensky"
  )
}
