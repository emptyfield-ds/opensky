
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opensky

<!-- badges: start -->

[![R-CMD-check](https://github.com/emptyfield-ds/opensky/workflows/R-CMD-check/badge.svg)](https://github.com/emptyfield-ds/opensky/actions)
[![Codecov test
coverage](https://codecov.io/gh/emptyfield-ds/opensky/branch/main/graph/badge.svg)](https://app.codecov.io/gh/emptyfield-ds/opensky?branch=main)
<!-- badges: end -->

The goal of opensky is to …

## Installation

You can install the development version of opensky from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("emptyfield-ds/opensky")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(opensky)
proj_dir <- fs::file_temp()
fs::dir_create(proj_dir)
usethis::proj_set(proj_dir, force = TRUE)
#> ✓ Setting active project to '/private/var/folders/w7/8yv1j00s0bb3pfhmqc_rvd980000gn/T/RtmpKW9RXr/file9c615751da02'

# create and open kakashi-themed xaringan slides
use_xaringan_kakashi("slides")
#> ✓ Writing 'slides.Rmd'
#> ✓ Saving 'malcolmbarrett/kakashi/kakashi.css' to './theme.css'

# create and open tozan-themed xaringan slides
use_xaringan_tozan("slides2")
#> ✓ Writing 'slides2.Rmd'
#> ✓ Leaving 'theme.css' unchanged

# create and open a blank R Markdown template with reasonable chunk defaults
use_blank_rmd("slides3")
#> ✓ Writing 'slides3.Rmd'

# create `ggplot2-utils.R`
use_ggplot2_utils()
#> ✓ Writing 'ggplot2-utils.R'
```
