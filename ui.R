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

shinyUI(fluidPage(
  # Application title
  titlePanel("Mare's Tail:  Weather Event Loss Prediction",
              tags$head(
                tags$img(src = "mares_tail_logo.jpg", height = 100, width = 100))),
  sidebarLayout(
    sidebarPanel(
    h4("Instructions"),
    p("Select US state and weather event from the lists below."),
    selectInput("myState", "state", listState),
    selectInput("myStorm", "weather event", listStorm),
    p("The expected number of events per year, and the expected injuries, 
      fatalities, property and crop damage per event are shown in the right hand 
      panel.")
    ),
  mainPanel(
    h4("events per year", verbatimTextOutput("nEvent")),
    h4("injuries per 1000 events", verbatimTextOutput("Injury")),
    h4("fatalities per 1000 events", verbatimTextOutput("Fatality")),
    h4("property damage per event, $ million", verbatimTextOutput("PropDmg")),
    h4("crop damage per event, $ million", verbatimTextOutput("CropDmg")),
    p("Raw data for storm events recorded between 1996-2011 are from the National Oceanic and Atmospheric Administration."),
    a("https://www.ncdc.noaa.gov/stormevents/"),
    p("Details of data processing are available at"),
    a("http://rpubs.com/jonathanowen/weather"))
  )
))