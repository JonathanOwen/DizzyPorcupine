library(shiny)
dataStorm <- read.csv("storm_table.csv")

shinyServer(function(input, output) {  
  rowStorm <- reactive({as.integer(dataStorm[dataStorm$STATE==input$myState & dataStorm$evType==input$myStorm, 1])})
  output$nEvent   <- renderText({if(length(rowStorm()) == 0) {0} else {dataStorm[rowStorm(), 4]/16}})
  output$PropDmg  <- renderText({if(length(rowStorm()) == 0) {0} else {dataStorm[rowStorm(), 7]}})
  output$CropDmg  <- renderText({if(length(rowStorm()) == 0) {0} else {dataStorm[rowStorm(), 8]}})
  output$Injury   <- renderText({if(length(rowStorm()) == 0) {0} else {dataStorm[rowStorm(), 10]}})
  output$Fatality <- renderText({if(length(rowStorm()) == 0) {0} else {dataStorm[rowStorm(), 12]}})
  })