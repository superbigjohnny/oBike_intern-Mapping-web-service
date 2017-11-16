library('shiny')
options(shiny.maxRequestSize = 20000000*1024^2)

shinyServer(function(input, output,session) {
  sliderValues <- reactive({
    
    data.frame(
      Name = c("Integer"),
      Value = as.character(c(input$integer)),
      
      stringsAsFactors = FALSE)
    
  })
  
  output$mymap <- renderLeaflet({
    req(input$file1)
    
    df <- read.csv(input$file1$datapath,
                   header = TRUE,
                   sep = ",",
                   quote = '"')
    
    values1 <- sliderValues()[1,2]
    
    z <- as.data.frame(df)
    y1 <- points_to_line(z, "longitude", "latitude", "track_id")
    map3 = leaflet(df) %>% addProviderTiles("CartoDB.DarkMatter")
    map3 %>% addPolylines(data = y1,color="red",weight=values1)
    
  })
  
  observeEvent(input$mymap_marker_click, {
    leafletProxy("mymap", session) %>%
      removeMarker(input$map1_marker_click$id)
  })
  
  
}
)

