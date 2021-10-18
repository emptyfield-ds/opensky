#' Use `compat-purrr.R` from rlang
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_purrr_compat <- function(save_as = "compat-purrr.R", open = is_interactive()) {
  stopifnot(fs::dir_exists("R"))
  usethis::use_github_file(
    "r-lib/rlang",
    "R/compat-purrr.R",
    save_as = path("R", fs::path_ext_set(save_as, "R")),
    open = open
  )
}
