test_that("use_ggplot2_utils()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  use_ggplot2_utils()
  use_ggplot2_utils("ggplot2_helpers.R")

  expect_snapshot_file("ggplot2-utils.R")
  expect_snapshot_file("ggplot2_helpers.R")
})
