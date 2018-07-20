# oBike internship
### Brief
   + To become a data driven company like us, we collect diversity data, such as coordinate data and so on, but how can we get some valuable information from those data?
      Visualizing them on map, we create a mapping web-service. Through bike-mapping map, heat map and Track path map. We not only can know the riding condition, but operate bikes easily.
      
### Geomap - Bike Mapping
   + End point of last trip or the deployed point(bikes which haven’t been ridden before)
   + It shows the regional bikes amount.( you can move the mouse to the number and see the range of region) 
   + If the single bike cannot be counted to the near bikes, it will show the red-yellow icon.
   
<a href="https://thumbs.gfycat.com/PositiveWateryIndigowingedparrot-size_restricted.gif"><img src="https://thumbs.gfycat.com/PositiveWateryIndigowingedparrot-size_restricted.gif" title="demo"></a>

### Geomap - Heat map
   + It shows the distribution of start point and end point. (High density = Red region, Low density = blue region)
   + Compare the heat map of start & end point to see the users riding condition
   + Adjust the slider to change the radius(no unit) of every hot spot
   
<a href="https://i2.imgflip.com/2cc0rn.gif"><img src="https://i2.imgflip.com/2cc0rn.gif" title="demo1"></a>

### Geomap - Track path
   + Except for the start and end points, we collect the coordinate data every few seconds during a trip. Therefore, we can connect every single point to become a line and see the user trip path.
   + Notice!! Every trip might contain a few coordinate points, thus, filtering data first and don’t upload the data size more than 3MB(or you can separate to several cities)

<a href="https://i2.imgflip.com/2cc0y5.gif"><img src="https://i2.imgflip.com/2cc0y5.gif" title="demo2"></a>
   

      
      
