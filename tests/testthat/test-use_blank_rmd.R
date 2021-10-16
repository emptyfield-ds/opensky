test_that("use_blank()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  with_mock(
    check_installed = function(...) TRUE,
    {
      use_blank_rmd("blank")
      use_blank_rmd("blank2.Rmd")
    }
  )

  expect_snapshot_file("blank.Rmd")
  expect_snapshot_file("blank2.Rmd")
})
