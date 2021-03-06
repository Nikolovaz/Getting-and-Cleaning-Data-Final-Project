#
# In this project I am using the "iris" data set 

library(shiny)

shinyUI(fluidPage(                                                                                                                                                                                                                                                                                                                                                                                                              
  # Application header
  titlePanel(title = h4("Iris Dataset Render Plot() ", align="center")),
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      selectInput("var","1. Select the variable from the iris dataset",
                  choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4),selected = 1),
      br(),
      sliderInput("bins", "2. Select the number of BINs for histogram", min=5, max=25, value=15),
      br(),
      radioButtons("color", "3. Select the color of histogram",
                   choices = c("Sky blue", "Red", "Green"), selected = "Sky blue")
    ),
    # Main Panel    
    mainPanel(
      plotOutput("myhist")
    )
  )
)
)