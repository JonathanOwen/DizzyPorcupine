# 


# required libraries
library(shiny)
data(state)
listState <- state.abb

shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Weather Event Loss Prediction"),
  sidebarPanel(
    selectInput("myState", "choose state", listState)
     ),
  mainPanel(
    h4("you entered", verbatimTextOutput("inputValue")
    )
  )
))