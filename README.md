
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rbibtools <img src="man/figures/hexsticker.png" align="right" style="float:right; height:120px;"/>

<!-- badges: start -->

[![R CMD
Check](https://github.com/frbcesab/rbibtools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/frbcesab/rbibtools/actions/workflows/R-CMD-check.yaml)
[![Website
deployment](https://github.com/frbcesab/rbibtools/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/frbcesab/rbibtools/actions/workflows/pkgdown.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/rbibtools)](https://CRAN.R-project.org/package=rbibtools)
[![License: GPL (\>=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
[![LifeCycle](https://img.shields.io/badge/lifecycle-experimental-orange)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Project Status:
Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
<!-- badges: end -->

The R package `rbibtools` imports, cleans, and handles `.bib` files
([BibTeX](https://www.bibtex.com/) references) exported by common
references management software (e.g. Mendeley, Zotero).

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

The main function of `rbibtools` is `read_bibtex()`. See the [Get
started](https://frbcesab.github.io/rbibtools/articles/rbibtools.html)
vignette for an overview of the package.

## Citation

Please cite this package as:

> Casajus Nicolas (2022) rbibtools: A Toolbox to handle bib files. R
> package version 0.0.1.

## Code of Conduct

Please note that the `rbibtools` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
