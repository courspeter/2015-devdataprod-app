library(shiny)
library(datasets)
data("EuStockMarkets")

shinyUI(pageWithSidebar(
  headerPanel("Stock Index Forecaster"),
  sidebarPanel(
    radioButtons('index', "Stock Index", colnames(EuStockMarkets)),
    sliderInput('days', "Forecast period (days)", 500, min=50, max=2000, step=50),
    "Usage:",
    "Pick the stock index to forecast using the radio buttons labeled 'Stock Index'.",
    "Set the number of days using the slider labeled 'Forecast period (days)'."
  ),
  mainPanel(
    plotOutput('plot')
  )
))
