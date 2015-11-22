
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#
options(StringsAsFactors=F)
hotels <- read.csv("Hotelbestand MRA 2014 Opendata extended.csv")

  
# Load Dataset Here

library(shiny)
library(googleVis)


shinyServer(function(input, output) {
  
  reactive_filtered <- reactive({
    hotels[hotels$Stars >= input$stars[1] & hotels$Stars <= input$stars[2],]
  })
  
  output$stars_caption <- renderText({
    paste("Stars Between ", input$stars[1], " and ", input$stars[2], " stars")
  }) 
  
  output$mean_beds_caption <- renderText({
    filtered <- reactive_filtered()
    mean(filtered$Beds)
  }) 
  

  output$mytable <-  renderDataTable({
    filtered <- reactive_filtered()
    filtered[,1:6]
  },options = list(searching = FALSE))  

   output$outputmap <- renderGvis({
     filtered <- reactive_filtered()
     
     
     withProgress(message="Filtering and Visualising, please wait",
                   detail = "This shouldn't take long...",{
   

         #filtered_hotels <- filtered_hotels[1:100,]
         gvisMap(
           filtered,
           "Location",
           "Name",
           options=list(showTip=TRUE, 
                        showLine=TRUE, 
                        enableScrollWheel=TRUE,
                        mapType='terrain', 
                        useMapTypeControl=TRUE)
         )
     })
  })
   
   
})

