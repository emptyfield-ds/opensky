test_that("use_testthat_setup()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  expect_error(use_testthat_setup())
  fs::dir_create(path("tests", "testthat"))

  use_testthat_setup(open = FALSE)

  expect_snapshot_file(path("tests", "testthat", "setup.R"))
})
