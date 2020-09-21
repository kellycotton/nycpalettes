
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nycpalettes

<!-- badges: start -->

<!-- badges: end -->

Small R package that contains color palettes based on pictures that I
(and [Sharath Koorathota](https://github.com/schko)) took around NYC.

Created using the [colorfindr](https://github.com/zumbov2/colorfindr)
package and heavily inspired by the
[wesanderson](https://github.com/karthik/wesanderson) package.

## Installation

Development version on [GitHub](https://github.com/):

``` r
# install.packages("devtools")
devtools::install_github("kellycotton/nycpalettes")
#> Skipping install of 'nycpalettes' from a github remote, the SHA1 (17c13b06) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Example

``` r
library(nycpalettes)
library(ggplot2)

ggplot(mtcars, aes(mpg, disp, color = factor(gear))) + geom_point() +
  scale_color_manual(values = nyc_palette("DUMBO"))
```

<img src="man/figures/README-example-1.png" width="100%" />
