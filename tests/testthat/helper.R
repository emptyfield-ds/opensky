local_temp_dir <- function(env = parent.frame()) {
  current_wd <- getwd()
  path <- fs::file_temp()
  fs::dir_create(path)

  setwd(path)

  withr::defer(
    {
      setwd(current_wd)
      usethis::proj_set(NULL)
    },
    envir = env
  )

  invisible(path)
}

local_proj_set <- function(env = parent.frame()) {
  old_proj <- usethis::proj_set(getwd(), force = TRUE)
  withr::defer(usethis::proj_set(old_proj), envir = env)
}

