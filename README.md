
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rbibtools <img src="man/figures/hexsticker.png" height="120" align="right"/>

<!-- badges: start -->

[![R CMD
Check](https://github.com/frbcesab/rbibtools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/frbcesab/rbibtools/actions/workflows/R-CMD-check.yaml)
[![Website
deployment](https://github.com/frbcesab/rbibtools/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/frbcesab/rbibtools/actions/workflows/pkgdown.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/rbibtools)](https://CRAN.R-project.org/package=rbibtools)
[![License: GPL (\>=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
[![LifeCycle](man/figures/lifecycle/lifecycle-stable.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![Project Status:
Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Dependencies](https://img.shields.io/badge/dependencies-3/28-green?style=flat)](#)
<!-- badges: end -->

The goal of the R package `rbibtools` is to 1) read BibTeX references
exported by Mendeley/Zotero, 2) clean metadata, and 3) export references
as an Excel file.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("FRBCesab/rbibtools")
```

Then you can attach the package `rbibtools`:

``` r
library("rbibtools")
```

## Overview

The main function of `rbibtools` is `read_bibtex()`.

## Citation

Please cite this package as:

> Casajus Nicolas (2022) rbibtools: An R package to read BiBTeX
> references exported by Mendeley. R package version 0.0.1.

## Code of Conduct

Please note that the `rbibtools` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
