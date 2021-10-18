#' Use an ignored `rhub.R` file
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_r_hub <- function(save_as = "rhub.R", open = is_interactive()) {
  check_installed("rhub")
  usethis::use_template(
    "rhub.R",
    save_as = fs::path_ext_set(save_as, "R"),
    open = open,
    package = "opensky",
    ignore = TRUE
  )

  usethis::use_git_ignore(fs::path_ext_set(save_as, "R"))
}
