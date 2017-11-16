library('shiny')
options(shiny.maxRequestSize = 20000000*1024^2)
myIcon = makeAwesomeIcon(icon = "fa-bicycle", library = "fa",
                         markerColor = "red", iconColor = "yellow", spin = FALSE,
                         extraClasses = NULL)
shinyServer(function(input, output,session) {
  
  output$mymap <- renderLeaflet({
    req(input$file1)
    
    df <- read.csv(input$file1$datapath,
                   header = TRUE,
                   sep = ",",
                   quote = '"')
    leaflet(df) %>%addProviderTiles("OpenStreetMap.Mapnik")%>% addCircleMarkers(
      lng = ~longitude,
      lat = ~latitude,
      radius=3,
      weight=2,
      label= ~as.character(bike_id),
      fill = TRUE, color = 'blue',
      fillOpacity = 1

    )%>%
      addAwesomeMarkers(icon=myIcon,clusterOptions = markerClusterOptions(freezeAtZoom = FALSE))
    
  })
  
  observeEvent(input$mymap_marker_click, {
    leafletProxy("mymap", session) %>%
      removeMarker(input$map1_marker_click$id)
  })
    
    

    


})

