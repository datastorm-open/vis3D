#' 3D visualization
#'
#' 3D visualization using vis.js library
#'
#' @param data : data.frame. Needed at least columns "x", "y" and "z"
#' See \url{http://visjs.org/docs/graph3d.html#Data_Format}
#' \itemize{
#'  \item{"x"}{ : Location on the x-axis.}
#'  \item{"y"}{ : Location on the y-axis.}
#'  \item{"z"}{ : Location on the z-axis.}
#'  \item{"style"}{ : The data value, required for graph styles bar-color, bar-size, dot-color and dot-size. }
#'  \item{"filter"}{ : Filter values used for the animation. This column may have any type, such as a number, string, or Date.}
#'}
#'
#' @param style : The style of the 3d graph. Available styles: bar, bar-color, bar-size, dot, dot-line, dot-color, dot-size, line, grid, or surface
#'
#' @examples
#'
#'nb <- 10
#'don <- expand.grid(x = 1:nb, y = 1:nb)
#'don$z <-rnorm(nb*nb)
#'
#'vis3D(don)
#'vis3D(don, style = "dot-line")
#'vis3D(don, style = "grid")
#'vis3D(don, style = "bar")
#'
#'# style (dot-color and dot-size)
#'nb <- 10
#'don <- expand.grid(x = 1:nb, y = 1:nb)
#'don$z <-rnorm(nb*nb)
#'don$style <-runif(nb*nb)
#'
#'vis3D(don, style = "dot-size")
#'vis3D(don, style = "dot-color")
#'
#'#tooltip
#'vis3D(don) %>% visOptions3D(tooltip = TRUE)
#'
#'#custom tooltip
#'vis3D(don) %>% visOptions3D(tooltip = "function (point) {
#'  return 'value: <b>' + point.z + '</b>';}")
#'
#'# customize label
#'vis3D(don) %>% visOptions3D(xValueLabel = "function (x) {return (x) + '%'}")
#'
#'#animation
#'nb <- 5
#'don <- expand.grid(x = 1:nb, y = 1:nb, 
#'  filter = as.character(seq(as.Date("1990/1/1"), as.Date("1999/1/1"), "years")))
#'don$z <- rnorm(nrow(don))
#'
#'vis3D(don)
#'
#' @seealso \link{visOptions3D}
#'
#' @import htmlwidgets
#'
#' @export
vis3D <- function(data, style = "surface", width = NULL, height = NULL) {

  # forward options using x
  x = list(data = dataToJSON(data),
           options = list(width = '100%', height = '100%', style = style))

  # create widget
  htmlwidgets::createWidget(
    name = 'vis3D',
    x,
    width = width,
    height = height,
    package = 'vis3D'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
vis3DOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'vis3D', width, height, package = 'vis3D')
}

#' Widget render function for use in Shiny
#'
#' @export
renderVis3D <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, vis3DOutput, env, quoted = TRUE)
}
