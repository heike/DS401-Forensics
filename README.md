
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DS401

<!-- badges: start -->

[![R-CMD-check](https://github.com/heike/DS401/workflows/R-CMD-check/badge.svg)](https://github.com/heike/DS401/actions)
<!-- badges: end -->

The goal of the DS401 R package is to assess quality of 3d topographics
scans in form of x3p images.

## Installation

You can install the development version of DS401 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("heike/DS401")
```

## Example

``` r
library(DS401)
## basic example code
library(x3ptools)
```

### This scan has a lot of problems

``` r
x3p_image(fau277_bb_l2, file = "man/figures/fau277_bb_l2.png")
```

<img src="man/figures/fau277_bb_l2.png" width="100%" />

### This scan is about as good as we can hope for

``` r
x3p_image(fau001_ba_l1, file = "man/figures/fau001_ba_l1.png")
```

<img src="man/figures/fau001_ba_l1.png" width="100%" />

The `DS401` package combines a set of functions assessing the quality of
scans.

### Feature extracted

`extract_na` calculates the percentage of values that are missing in the
surface matrix of the scan. For the scan showns above, the percentages
are quite high for the bad scan and low for the good scan:

``` r
extract_na(fau277_bb_l2)
#> [1] 38.26887
extract_na(fau001_ba_l1)
#> [1] 13.83538
```

### Row and column-wise missing values

Document use of functions `extract_na_column` and `extract_na_row` for
both a good and a bad plot.

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.
