# 


# required libraries
library(shiny)
data(state)
listState <- state.abb
listStorm <- c("astronomical low tide", "avalanche", "blizzard", 
               "coastal flood", "cold/wind chill", "debris flow", "dense fog", 
               "dense smoke", "drought", "dust devil", "dust storm", 
               "excessive heat", "extreme cold/wind chill", "flash flood", 
               "flood", "frost/freeze", "funnel cloud", "freezing fog", "hail", 
               "heat", "heavy rain", "heavy snow", "high surf", "high wind", 
               "hurricane (typhoon)", "ice storm", "lake-effect snow",
               "lakeshore flood", "lightning", "marine hail",
               "marine high wind", "marine strong wind", 
               "marine thunderstorm wind", "rip current", "seiche", 
               "sleet", "storm surge/tide", "strong wind", "thunderstorm wind", 
               "tornado", "tropical depression", "tropical storm", "tsunami",
               "volcanic ash", "waterspout", "wildfire", "winter storm", 
               "winter weather")

shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Weather Event Loss Prediction"),
  sidebarPanel(
    selectInput("myState", "choose state", listState),
    selectInput("myStorm", "choose weather event", listStorm)
     ),
  mainPanel(
    h4("number of events", verbatimTextOutput("nEvent")),
    h4("mean property damage", verbatimTextOutput("PropDmg")),
    h4("mean crop damage", verbatimTextOutput("CropDmg")),
    h4("mean injuries", verbatimTextOutput("Injury")),
    h4("mean fatalities", verbatimTextOutput("Fatality"))
    )
  )
)