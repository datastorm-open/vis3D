require(shiny)
require(vis3D)

shinyServer(function(input, output) {
  
  output$graph <- renderVis3D({
    nb <- input$nb
    
    if(input$animated){
      don <- expand.grid(x = 1:nb, y = 1:nb, filter = as.character(seq(as.Date("1990/1/1"), as.Date("1999/1/1"), "years")))
    }else{
      don <- expand.grid(x = 1:nb, y = 1:nb)
    }
    
    don$z <-rnorm(nrow(don))
  
    if(input$style%in%c("dot-color", "dot-size", "bar-color", "bar-size")){
      don$style <-runif(nb*nb)
    }

    graph <- vis3D(don, style = input$style)
    
    if(input$tooltip){
      visOptions3D(graph, tooltip = TRUE)
    }else{
      graph
    }
    
  })
  
})