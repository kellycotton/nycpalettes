
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
#> Skipping install of 'nycpalettes' from a github remote, the SHA1 (0fbdb75b) has not changed since last install.
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

## Palettes

<img src="https://i.imgur.com/VUwnUcl.jpg" width=30% height=30%>

``` r
nyc_palette("ParkBlossoms")
```

<img src="man/figures/README-ParkBlossoms-1.png" width="100%" />
<img src="https://i.imgur.com/LQBjaUr.jpg" width=30% height=30%>

``` r
nyc_palette("SunsetPlatform")
```

<img src="man/figures/README-SunsetPlatform-1.png" width="100%" />
<img src="https://i.imgur.com/SRuJZMz.jpg" width=30% height=30%>

``` r
nyc_palette("EmpireView")
```

<img src="man/figures/README-EmpireView-1.png" width="100%" />
<img src="https://i.imgur.com/z82Wzhy.jpg" width=30% height=30%>

``` r
nyc_palette("Sunset1")
```

<img src="man/figures/README-Sunset1-1.png" width="100%" />
<img src="https://i.imgur.com/oMnKZXu.jpg" width=30% height=30%>

``` r
nyc_palette("Skyline1")
```

<img src="man/figures/README-Skyline1-1.png" width="100%" />
<img src="https://i.imgur.com/29umEmg.jpg" width=30% height=30%>

``` r
nyc_palette("Skyline2")
```

<img src="man/figures/README-Skyline2-1.png" width="100%" />
<img src="https://i.imgur.com/Z2aOXdK.jpg" width=30% height=30%>

``` r
nyc_palette("ShoreSkyline")
```

<img src="man/figures/README-ShoreSkyline-1.png" width="100%" />
<img src="https://i.imgur.com/ASJXjbY.jpg" width=30% height=30%>

``` r
nyc_palette("Empire")
```

<img src="man/figures/README-Empire-1.png" width="100%" />
<img src="https://i.imgur.com/y1eDOGZ.jpg" width=30% height=30%>

``` r
nyc_palette("Statue1")
```

<img src="man/figures/README-Statue1-1.png" width="100%" />
<img src="https://i.imgur.com/lEnEXCV.jpg" width=30% height=30%>

``` r
nyc_palette("Statue2")
```

<img src="man/figures/README-Statue2-1.png" width="100%" />
<img src="https://i.imgur.com/fJZKtWB.jpg" width=30% height=30%>

``` r
nyc_palette("World")
```

<img src="man/figures/README-World-1.png" width="100%" />
<img src="https://i.imgur.com/Twiqj6W.jpg" width=30% height=30%>

``` r
nyc_palette("Met")
```

<img src="man/figures/README-Met-1.png" width="100%" />
<img src="https://i.imgur.com/wT0TF3b.jpeg" width=30% height=30%>

``` r
nyc_palette("BrooklynBridge")
```

<img src="man/figures/README-BrooklynBridge-1.png" width="100%" />
<img src="https://i.imgur.com/sfmvaJA.jpg" width=30% height=30%>

``` r
nyc_palette("DUMBO")
```

<img src="man/figures/README-DUMBO-1.png" width="100%" />
<img src="https://i.imgur.com/X3lnMKp.jpg" width=30% height=30%>

``` r
nyc_palette("Yankees")
```

<img src="man/figures/README-Yankees-1.png" width="100%" />
