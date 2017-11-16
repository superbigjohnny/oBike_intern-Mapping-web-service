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
      width =12
     
      
    ),
	
	
	
    
      
    mainPanel(
	# br(),
	# br(),
	# br(),
	# br(),
	# br(),
	# br(),
	# br(),
	# br(),
	# br(),
      
      leafletOutput("mymap",width = 1500,height =800)
      #tableOutput("contents")

    )
  )
)
)