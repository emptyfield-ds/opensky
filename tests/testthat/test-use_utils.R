test_that("use_r_hub()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  expect_error(use_utils())
  fs::dir_create("R")

  use_utils(open = FALSE)
  use_utils("boop-utils", open = FALSE)

  expect_snapshot_file(path("R", "utils.R"))
  expect_snapshot_file(path("R", "boop-utils.R"))
})
