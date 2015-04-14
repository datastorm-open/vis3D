require(shiny)
require(vis3D)

shinyUI(fluidPage(
  
  sliderInput("nb", "grid size : ", min = 2, max = 50, value = 5),
  selectInput("style", "style : ", 
              choice = c("bar", "bar-color", "bar-size", "dot", "dot-line", "dot-color", "dot-size", "line", "grid", "surface")),
  checkboxInput("animated", "Animation", FALSE),
  checkboxInput("tooltip", "Tooltip", FALSE),
  vis3DOutput("graph", height = "600px")
  
))