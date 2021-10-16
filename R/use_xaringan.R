#' Use xaringan templates
#'
#' @inheritParams usethis::use_template
#'
#' @export
use_xaringan_kakashi <- function(save_as, open = is_interactive()) {
  check_installed(c("xaringan", "ragg", "tidyverse"))
  usethis::use_template(
    "xaringan_kakashi.Rmd",
    save_as = save_as,
    open = open,
    package = "opensky"
  )

  usethis::use_github_file(
    "malcolmbarrett/kakashi",
    path = "kakashi.css",
    save_as = path(path_dir(save_as), "theme.css")
  )
}

#' @export
#' @rdname use_xaringan_kakashi
use_xaringan_tozan <- function(save_as) {
  check_installed(
    c("xaringan", "xaringanthemer", "xaringanExtra", "ragg", "tidyverse")
  )

  usethis::use_template(
    "xaringan_tozan.Rmd",
    save_as = save_as,
    open = open,
    package = "opensky"
  )

  usethis::use_template(
    "tozan.css",
    save_as = path(path_dir(save_as), "theme.css")
  )
}
