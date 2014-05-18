
# url = "http://api.brewerydb.com/v2/search/geo/point?key=#{BREWERYDB_CLIENT_ID}&lat=40.77&lng=-73.95&radius=100"
# breweries = HTTParty.get(url)
# breweries["data"].each do |b|
#   if b["openToPublic"] == "Y"
#     Brewery.create({
#       brewery_id: b["brewery"]["id"],
#       name: b["brewery"]["name"],
#       street_address: b["streetAddress"],
#       city: b["locality"],
#       state: b["region"],
#       zipcode: b["postalCode"],
#       latitude: b["latitude"],
#       longitude: b["longitude"],
#       distance: b["distance"]
#       })
#   end
# end

# breweries = Brewery.all

# breweries.each do |b|
#   if b.street_address == nil
#     b.delete
#   end
# end



# breweries.each do |b|
#   url = "http://api.brewerydb.com/v2/brewery/#{b.brewery_id}/beers?key=#{BREWERYDB_CLIENT_ID}"
#   beers_hash = HTTParty.get(url)
#   if beers_hash["status"] == "success" && beers_hash["data"] == nil
#     b.delete
#   end
# end

# breweries.each do |brewery|
#   url = "http://api.brewerydb.com/v2/brewery/#{brewery.brewery_id}/beers?key=#{BREWERYDB_CLIENT_ID}"
#   hash = HTTParty.get(url)
#    if hash["status"] == "success" && hash.has_key?("data")
#     hash["data"].each do |beer|
#       if beer.has_key?("style")
#         x = beer["style"]["categoryId"]
#         if x == 1
#           brewery.british_ale = true
#         elsif x == 2
#           brewery.irish_ale = true
#         elsif x == 3
#           brewery.american_ale = true
#         elsif x == 4
#           brewery.german_ale = true
#         elsif x == 5
#           brewery.belgian_ale = true
#         elsif x == 7
#           brewery.european_lager = true
#         elsif x == 8
#           brewery.american_lager = true
#         end
#       end
#     end
#   else
#     "unsuccessful on #{brewery.id}"
#   end
# end
