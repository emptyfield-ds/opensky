test_that("use_xaringan_kakashi()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  use_xaringan_kakashi("kakashi", open = FALSE)
  expect_snapshot_file("kakashi.Rmd")
})

test_that("use_xaringan_tozan()", {
  withr::local_options(usethis.quiet = TRUE)
  local_temp_dir()
  local_proj_set()

  use_xaringan_tozan("tozan", open = FALSE)
  expect_snapshot_file("tozan.Rmd")
})
