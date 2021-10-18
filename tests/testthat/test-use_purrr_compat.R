test_that("use_purrr_compat()", {
  skip_if_offline()
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  expect_error(use_purrr_compat())
  fs::dir_create("R")

  use_purrr_compat(open = FALSE)
  use_purrr_compat("compat-boop", open = FALSE)

  expect_snapshot_file(path("R", "compat-purrr.R"))
  expect_snapshot_file(path("R", "compat-boop.R"))
})
