#' Use `utils.R` with `%||%` and `%nin%`
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_utils <- function(save_as = "utils.R", open = is_interactive()) {
  stopifnot(fs::dir_exists("R"))
  usethis::use_template(
    "utils.R",
    save_as = path("R", fs::path_ext_set(save_as, "R")),
    open = open,
    package = "opensky"
  )
}
