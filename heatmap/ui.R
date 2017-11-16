library(shiny)
library(leaflet)
library(htmltools)
library(htmlwidgets)
library(dplyr)
shinyUI(ui<-fluidPage(
  titlePanel("Uploading Files"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Choose file to upload',
                accept = c(
                  'text/csv',
                  'text/comma-separated-values',
                  'text/tab-separated-values',
                  'text/plain',
                  '.csv',
                  '.tsv'
                  
                )
      ),
      sliderInput("integer", "Integer:",
                  min = 0, max = 40,
                  value = 15),
      
      width =12
      
      
      
      
    ),
    
    
    
    mainPanel(
      
      
      leafletOutput("mymap",width = 1500,height =1000)
      
      #tableOutput("values")
      
    )
  )
))
