test_that("use_r_hub()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  with_mock(
    check_installed = function(...) TRUE, {
      use_r_hub(open = FALSE)
      use_r_hub("boop", open = FALSE)
    }
  )

  expect_snapshot_file("rhub.R")
  expect_snapshot_file("boop.R")
})
