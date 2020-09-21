nyc_palettes <- list(
  ParkBlossoms = c("#DBE2F0", "#C4C6D8", "#767252", "#545033", "#2D2218", "#AB9093"),
  SunsetPlatform = c("#25170C", "#663E19", "#B76E18", "#FDCBA2", "#91A2B2", "#627498", "#2C395A"),
  EmpireView = c("#CAD0D7", "#9B9488", "#5B5D5B", "#2E3334"),
  Sunset1 = c("#E6DDC0", "#8293A3", "#748CA4", "#9C9CA8",  "#787B8E", "#7A726F", "#030909"),
  Sunset2 = c("#413740", "#705D6B", "#B490AC",  "#EF9A84", "#998176"),
  Skyline1 = c("#F8FCFF", "#D6E3F3", "#A9BDD6", "#91A4AA", "#76898F", "#433B4A"),
  Skyline2 = c("#1D191E", "#353747", "#6D5F61", "#A7A3B6", "#C5BABB", "#E7BA85", "#DA9C71"),
  ShoreSkyline = c("#D5E1ED", "#C3CBDE", "#A0A8AA", "#8E9698", "#697754"),
  Empire = c("#BFD4F3", "#9DB4E0", "#69686D", "#222131", "#C5BAA8"),
  Statue1 = c("#FAFEFF", "#E5EDEF", "#C7D4CD", "#91A7B4", "#706E57", "#142320"),
  Statue2 = c("#C1DFFB", "#C1D4E3", "#9FBFD4", "#87ADC4", "#69A0B4", "#325D66"),
  World = c("#9AC4F5", "#6C839A", "#B1A892", "#212C1A"),
  Met = c("#2D1F1A", "#573527", "#9D693B", "#D3AC6F", "#E0CEB9"),
  BrooklynBridge = c("#BEC9DD", "#A29D9E",  "#726E6C", "#423E3D","#1A1515"),
  DUMBO = c("#000000","#848075", "#B8C6C7", "#58382B"),
  Yankees= c( "#080A0F", "#34373C", "#7E7274", "#60742F", "#B9C3D3", "#EBEAE3")
)

#' Color Palettes based on NYC
#'
#' R package that contains color palettes based on pictures that I took around NYC.
#'
#' @param name Name of palette. Choices are:
#' \code{ParkBlossoms}, \code{SunsetPlatform}, \code{EmpireView}, \code{Sunset1},
#' \code{Sunset2}, \code{Skyline1}, \code{Skyline2}, \code{ShoreSkyline}, \code{Empire},
#' \code{Statue1}, \code{Statue2}, \code{World}, \code{Met}, \code{BrooklynBridge},
#' \code{DUMBO}, \code{Yankees}
#'
#' @param n Number of colors desired. Palettes range from 4 - 7 colors.
#' @param type Either continuous or discrete.
#'
#' @return A vector of colors.
#' @export
#'
#' @examples
#' nyc_palette("Sunset2")
#' nyc_palette("DUMBO")
#'
nyc_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- nyc_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found")

  if (missing(n)) {
    n = length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop(paste("You have requested", n, "colors, but this palette only contains", length(pal), "colors."))
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n", ylim = 1)

   rect(0, 0.95, n + 1, 1.05, col = rgb(1, 1, 1, 0.7), border = NA)
   text((n + 1) / 2, 1, labels = attr(x,"name"), cex = 1, family = "serif")
   for (i in 1:n) {
     rect(i-.5, .65, i+.5, .75, col = rgb(1, 1, 1, 0.7), border = NA)
     text(i, .7, labels = x[i], cex = 1, family = "serif")
   }
}
