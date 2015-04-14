#' 3D visualization general options
#'
#' 3D visualization general options. See \url{http://visjs.org/docs/graph3d.html#Configuration_Options}.
#'
#' @param animationInterval : number. Default to 1000. The animation interval in milliseconds. This determines how fast the animation runs.
#' @param animationPreload : boolean. Default to false. If false, the animation frames are loaded as soon as they are requested. if animationPreload is true, the graph will automatically load all frames in the background, resulting in a smoother animation as soon as all frames are loaded. The load progress is shown on screen.
#' @param animationAutoStart : boolean. Default to false. If true, the animation starts playing automatically after the graph is created.
#' @param backgroundColor : Just a String, or a named list. The background color for the main area of the chart. Can be either a simple HTML color string, for example: 'red' or '#00cc00', or an object with the following properties.
#'\itemize{
#' \item{"stroke"}{ : string. Default to 'gray'. The color of the chart border, as an HTML color string.}
#' \item{"strokeWidth"}{ : number. Default to 1. The border width, in pixels.}
#' \item{"fill"}{ : string. Default to 'white'. The chart fill color, as an HTML color string.}
#'}
#' @param cameraPosition : Object. Default to {horizontal: 1.0, vertical: 0.5, distance: 1.7}. Set the initial rotation and position of the camera. The object cameraPosition contains three parameters: horizontal, vertical, and distance. Parameter horizontal is a value in radians and can have any value (but normally in the range of 0 and 2*Pi). Parameter vertical is a value in radians between 0 and 0.5*Pi. Parameter distance is the (normalized) distance from the camera to the center of the graph, in the range of 0.71 to 5.0. A larger distance puts the graph further away, making it smaller. All parameters are optional.
#' @param height : string. Default to '400px'. The height of the graph in pixels or as a percentage.
#' @param keepAspectRatio : boolean. Default to true. If keepAspectRatio is true, the x-axis and the y-axis keep their aspect ratio. If false, the axes are scaled such that they both have the same, maximum with.
#' @param showAnimationControls : boolean. Default to true. If true, animation controls are created at the bottom of the Graph. The animation controls consists of buttons previous, start/stop, next, and a slider showing the current frame. Only applicable when the provided data contains an animation.
#' @param showGrid : boolean. Default to true. If true, grid lines are draw in the x-y surface (the bottom of the 3d graph).
#' @param showPerspective : boolean. Default to true. If true, the graph is drawn in perspective: points and lines which are further away are drawn smaller. Note that the graph currently does not support a gray colored bottom side when drawn in perspective.
#' @param showShadow : boolean. Default to false. Show shadow on the graph.
#' @param style : string. Default to 'dot'. The style of the 3d graph. Available styles: bar, bar-color, bar-size, dot, dot-line, dot-color, dot-size, line, grid, or surface
#' @param tooltip : boolean | function. Default to false. Show a tooltip showing the values of the hovered data point. The contents of the tooltip can be customized by providing a callback function as tooltip. In this case the function is called with an object containing parameters x, y, and z argument, and must return a string which may contain HTML.
#' @param valueMax : number. Default to none. The maximum value for the value-axis. Only available in combination with the styles dot-color and dot-size.
#' @param valueMin : number. Default to none. The minimum value for the value-axis. Only available in combination with the styles dot-color and dot-size.
#' @param verticalRatio : number. Default to 0.5. A value between 0.1 and 1.0. This scales the vertical size of the graph When keepAspectRatio is set to false, and verticalRatio is set to 1.0, the graph will be a cube.
#' @param width : string. Default to 400px'. The width of the graph in pixels or as a percentage.
#' @param xBarWidth : number. Default to none. The width of bars in x direction. By default, the width is equal to the distance between the data points, such that bars adjoin each other. Only applicable for styles 'bar' and 'bar-color'.
#' @param xCenter : string. Default to '55\%'. The horizontal center position of the graph, as a percentage or in pixels.
#' @param xMax : number. Default to none. The maximum value for the x-axis.
#' @param xMin : number. Default to none. The minimum value for the x-axis.
#' @param xStep : number. Default to none. Step size for the grid on the x-axis.
#' @param xValueLabel : function. Default to none. A function for custom formatting of the labels along the x-axis, for example function (x) {return (x * 100) + '\%'}.
#' @param yBarWidth : number. Default to none. The width of bars in y direction. By default, the width is equal to the distance between the data points, such that bars adjoin each other. Only applicable for styles 'bar' and 'bar-color'.
#' @param yCenter : string. Default to '45\%'. The vertical center position of the graph, as a percentage or in pixels.
#' @param yMax : number. Default to none. The maximum value for the y-axis.
#' @param yMin : number. Default to none. The minimum value for the y-axis.
#' @param yStep : number. Default to none. Step size for the grid on the y-axis.
#' @param yValueLabel : function. Default to none. A function for custom formatting of the labels along the y-axis, for example function (y) {return (y * 100) + '\%'}.
#' @param zMin : number. Default to none. The minimum value for the z-axis.
#' @param zMax : number. Default to none. The maximum value for the z-axis.
#' @param zStep : number. Default to none. Step size for the grid on the z-axis.
#' @param zValueLabel : function. Default to none. A function for custom formatting of the labels along the z-axis, for example function (z) {return (z * 100) + '\%'}.
#' @param xLabel : String. Default to x. Label on the X axis.
#' @param yLabel : String. Default to y. Label on the Y axis.
#' @param zLabel : String. Default to z. Label on the Z axis.
#' @param filterLabel : String. Default to time. Label for the filter column.
#' @param legendLabel : String. Default to value. Label for the style description.
#'
#'@export

visOptions3D <- function(graph,
                         animationInterval = NULL,
                         animationPreload = NULL,
                         animationAutoStart = NULL,
                         backgroundColor = NULL,
                         cameraPosition = NULL,
                         height = NULL,
                         keepAspectRatio = NULL,
                         showAnimationControls = NULL,
                         showGrid = NULL,
                         showPerspective = NULL,
                         showShadow = NULL,
                         style = NULL,
                         tooltip = NULL,
                         valueMax = NULL,
                         valueMin = NULL,
                         verticalRatio = NULL,
                         width = NULL,
                         xBarWidth = NULL,
                         xCenter = NULL,
                         xMax = NULL,
                         xMin = NULL,
                         xStep = NULL,
                         xValueLabel = NULL,
                         yBarWidth = NULL,
                         yCenter = NULL,
                         yMax = NULL,
                         yMin = NULL,
                         yStep = NULL,
                         yValueLabel = NULL,
                         zMin = NULL,
                         zMax = NULL,
                         zStep = NULL,
                         zValueLabel = NULL,
                         xLabel = NULL,
                         yLabel = NULL,
                         zLabel = NULL,
                         filterLabel = NULL,
                         legendLabel = NULL){
  
  options <- list()
  
  options$animationInterval = animationInterval
  options$animationPreload = animationPreload
  options$animationAutoStart = animationAutoStart
  options$backgroundColor = backgroundColor
  options$cameraPosition = cameraPosition
  options$height = height
  options$keepAspectRatio = keepAspectRatio
  options$showAnimationControls = showAnimationControls
  options$showGrid = showGrid
  options$showPerspective = showPerspective
  options$showShadow = showShadow
  options$style = style
  if(is.logical(tooltip) | is.null(tooltip)){
    options$tooltip = tooltip
  }else{
    options$tooltip = JS(tooltip)
  }
  
  options$valueMax = valueMax
  options$valueMin = valueMin
  options$verticalRatio = verticalRatio
  options$width = width
  options$xBarWidth = xBarWidth
  options$xCenter = xCenter
  options$xMax = xMax
  options$xMin = xMin
  options$xStep = xStep
  options$xValueLabel = JS(xValueLabel)
  options$yBarWidth = yBarWidth
  options$yCenter = yCenter
  options$yMax = yMax
  options$yMin = yMin
  options$yStep = yStep
  options$yValueLabel = JS(yValueLabel)
  options$zMin = zMin
  options$zMax = zMax
  options$zStep = zStep
  options$zValueLabel = JS(zValueLabel)
  options$xLabel = xLabel
  options$yLabel = yLabel
  options$zLabel = zLabel
  options$filterLabel = filterLabel
  options$legendLabel = legendLabel
  
  graph$x$options <- mergeLists(graph$x$options, options)
  
  graph
}
