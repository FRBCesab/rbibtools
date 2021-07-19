
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rmendeley <img src="man/figures/hexsticker.png" height="120" align="right"/>

<!-- badges: start -->

[![R CMD
Check](https://github.com/frbcesab/rmendeley/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/frbcesab/rmendeley/actions/workflows/R-CMD-check.yaml)
[![Website
deployment](https://github.com/frbcesab/rmendeley/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/frbcesab/rmendeley/actions/workflows/pkgdown.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/rmendeley)](https://CRAN.R-project.org/package=rmendeley)
[![License: GPL (>=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
[![LifeCycle](man/figures/lifecycle/lifecycle-experimental.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Project Status:
Concept](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![Dependencies](https://img.shields.io/badge/dependencies-3/28-green?style=flat)](#)
<!-- badges: end -->

The goal of the R package `rmendeley` is to 1) read BiBTeX references
exported by Mendeley, 2) clean metadata, and 3) export references as an
Excel file.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("FRBCesab/rmendeley")
```

Then you can attach the package `rmendeley`:

``` r
library("rmendeley")
```

## Overview

The main function of `rmendeley` is `read_bibtex()`.

## Citation

Please cite this package as:

> Casajus Nicolas (2021) rmendeley: An R package to read BiBTeX
> references exported by Mendeley. R package version 0.0.1.

## Code of Conduct

Please note that the `rmendeley` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
