#' Use ggplot2 templates
#'
#' Including `theme_minimal2()`, `geom_point2()`, and other variants
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_ggplot2_utils <- function(save_as = NULL, open = FALSE) {
  check_installed("ggplot2")

  if (is.null(save_as)) save_as <- "ggplot2-utils.R"
  usethis::use_template(
    "ggplot2-utils.R",
    save_as = save_as,
    open = open,
    package = "opensky"
  )
}
