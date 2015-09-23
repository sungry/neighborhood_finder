# neighborhood_finder

=begin
1. parse shapefile into geojson file by using GDAL (ogr2ogr -f GeoJSON -t_srs EPSG:4269 [filename].geojson [filename].shp) command line
2. use ARGV to get a file with street addresses parsed into json format recognizable by Geocoder
- use regex to get rid of last comma to match the format
3. extract coordinates of street address by using Geocoder.coordinates(arg) method
4. find the range(min and max) of Zillow's coordinates and to see if the address' coordinates are within the range
  - First, find min value and max value to get the proper range for each neighborhood
  - Second, compare the passed-in coordinates with the range to find its place.
5. If neighborhood name is available with the coordinates, return the name,

=end
