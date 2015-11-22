
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(googleVis)

shinyUI(
  navbarPage("Amsterdam Hotel Info",
             tabPanel("Hotel Info",
                      
                      sidebarLayout(
                        sidebarPanel(
                          sliderInput("stars", "Number of Stars:", min = 0, max = 5, value = c(3,4))
                        ),
                        mainPanel(
                          h3("Hotels in Amsterdam"),
                          p("List of hotels in Amsterdam with the amount of stars, rooms, beds and their location"),
                          h4("Filter Active:"),
                          p(textOutput("stars_caption")),
                          htmlOutput("outputmap"),
                          p(""),
                          dataTableOutput('mytable')
                          
                        )
                      )
             ),
             tabPanel("Documentation",
                      h2("Amsterdam Hotel Info"),
                      hr(),
                      h3("Description"),
                      
                      p("This application provides some basic information about hotels in Amsterdam,",
                        "to be more specific it provides the capacity and the amount of stars of the hotels."),
                      
                      p("The application allows you to filter on the amount of stars hotels have and shows you the location and",
                        "basic details of the filtered hotels"),
                        
                      h3("Source Data"),
                      
                      p("The data was extracted from Amsterdam Open data website: "),
                      a("www.amsterdamopendata.nl/web/guest/data/?dataset=hotels_in_metropoolregio_amsterdam", href="http://www.amsterdamopendata.nl/web/guest/data/?dataset=hotels_in_metropoolregio_amsterdam"),
                      
                      p("The specific dataset used is Hotels MRA 2014"),
                      
                      p("The Location info for the maps was added by looking up the longitude and latitude of the postal codes")
                      
             )
  )
)
 