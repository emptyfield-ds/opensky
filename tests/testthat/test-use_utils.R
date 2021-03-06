test_that("use_utils(), edit_utils()", {
  skip_on_os("windows")
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  expect_error(use_utils())
  expect_error(edit_utils())
  fs::dir_create("R")

  use_utils(open = FALSE)
  # expect no error
  expect_error(edit_utils(), regexp = NA)
  use_utils("boop-utils", open = FALSE)

  expect_snapshot_file(path("R", "utils.R"))
  expect_snapshot_file(path("R", "boop-utils.R"))
})
