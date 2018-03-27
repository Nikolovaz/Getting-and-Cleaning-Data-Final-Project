#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
  function(input, output){
    output$myhist <- renderPlot({
      colm <- as.numeric(input$var)
      hist(iris[,colm], breaks=seq(0, max(iris[,colm]), l=input$bins+1),col=input$color, main="Histogram of Iris dataset", xlab=names(iris[colm])) 
    })
  }
)
