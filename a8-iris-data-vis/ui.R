library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  #Title
  titlePanel("Select Attributes of Iris to Plot"),
  
  sidebarLayout(
    #SIDE PANEL
    sidebarPanel(
      radioButtons("sepal", 
                   label = h3("Sepal"),
                   choices = list("Length" = "Sepal.Length", "Width" = "Sepal.Width"), 
                   selected = "Sepal.Length"),
      radioButtons("petal", 
                   label = h3("Petal"),
                   choices = list("Length" = "Petal.Length", "Width" = "Petal.Width"), 
                   selected = "Petal.Length")
    ),  
    #MAIN PANEL
    mainPanel(
       plotlyOutput("plot")
    )
  )
))
