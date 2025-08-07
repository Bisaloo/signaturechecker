
<!-- README.md is generated from README.Rmd. Please edit that file -->

# signaturechecker

<!-- badges: start -->

<!-- badges: end -->

The goal of signaturechecker is to use static analysis (via the [lintr R
package](https://lintr.r-lib.org/)) to check if base R functions in a
given codebase are used with the correct signature.

## Motivation

This package provides a way to check, without any modification to the
source package or its own check infrastructure, for:

- Partially matched arguments
- Invalid arguments:
  - For functions that don’t use ellipses, invalid arguments will
    generate an error upon execution. But it can still go undetected
    while developing R package if code coverage is low and this section
    of the code is untested.
  - For functions that use ellipses, invalid arguments can be ignored
    silently if the function doesn’t use `chkDots(...)` or something
    equivalent, even in the case of complete code coverage.

## Installation

You can install the development version of signaturechecker from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("Bisaloo/signaturechecker")
```
