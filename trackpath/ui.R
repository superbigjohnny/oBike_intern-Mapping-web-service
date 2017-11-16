library('shiny')
library('leaflet')
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
                  min = 0, max = 2,
                  value = 1,step=0.1),
      width = 12
      
      
      
      
    ),
    
    
    
    mainPanel(
      
      
      leafletOutput("mymap",width = 1500,height =1000)
      
      #tableOutput("values")
      
    )
  )
)

)