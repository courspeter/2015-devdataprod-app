library(shiny)
library(datasets)
library(forecast)
data("EuStockMarkets")

shinyServer(
  function(input, output) {
    output$plot <- renderPlot({
      f <- forecast(EuStockMarkets[,input$index], h=input$days)
      plot(f, ylab=input$index)
    })
  }
)
