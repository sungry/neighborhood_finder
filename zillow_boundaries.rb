require 'json'
require 'geocoder'

address = ARGV
puts address

def get_neighborhood(lat, lon)

  file = open("ZillowNeighborhoods-CA.geojson")
  json = file.read
  parsed = JSON.parse(json)

  parsed["features"].each do |record|

    if lat == record["geometry"]["coordinates"][1]
      puts "sweet"
    end
    # puts record["properties"]["OBJECTID"]
    # puts record["geometry"]["coordinates"][1] #latitude
    # puts record["geometry"]["coordinates"][0] #longitude

  end
end

def get_address(address)
  street_coordinates = Geocoder.coordinates(address)
  get_neighborhood(street_coordinates[0], street_coordinates[1])
end



