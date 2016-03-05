library(shiny)
library(plotly)

shinyServer(function(input, output) {
  data(iris)
  
  #Plot
  output$plot <- renderPlotly({
    pal <- RColorBrewer::brewer.pal(nlevels(iris$Species), "Set1")
    plot_ly(data = iris, 
            x = eval(parse(text = input$sepal)), 
            y = eval(parse(text = input$petal)), 
            color = Species,
            colors = pal, 
            mode = "markers") %>% 
      layout(xaxis = list(title = "Sepal"), 
             yaxis = list(title = "Petal"))
  
    })
  
})
