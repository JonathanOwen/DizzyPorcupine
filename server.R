library(shiny)


shinyServer(function(input, output) {  
  output$inputValue  <- renderPrint({input$myState})
  })