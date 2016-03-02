library(shiny)
dataStorm <- read.csv("storm_table.csv")

shinyServer(function(input, output) {  
  rowStorm <- reactive({as.integer(dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 1])})
  output$nEvent   <- renderPrint({dataStorm[rowStorm(), 4]})
  output$PropDmg  <- renderPrint({dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 7]})
  output$CropDmg  <- renderPrint({dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 8]})
  output$Injury     <- renderPrint({dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 10]})
  output$Fatality   <- renderPrint({dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 12]})
  })