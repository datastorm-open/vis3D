# visNetwork
R package, using vis.js library for 3D visualization

```` 
devtools::install_github("bthieurmel/vis3D")

require(vis3D)
?vis3D

nb <- 10
don <- expand.grid(x = 1:nb, y = 1:nb)
don$z <-rnorm(nb*nb)

vis3D(don)

shiny::runApp(system.file("shiny", package = "vis3D"))
````

