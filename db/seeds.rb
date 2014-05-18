
url = "http://api.brewerydb.com/v2/search/geo/point?key=#{BREWERYDB_CLIENT_ID}&lat=40.77&lng=-73.95&radius=100"
breweries = HTTParty.get(url)
breweries["data"].each do |b|
  if b["openToPublic"] == "Y"
    Brewery.create({
      brewery_id: b["brewery"]["id"],
      name: b["brewery"]["name"],
      street_address: b["streetAddress"],
      city: b["locality"],
      state: b["region"],
      zipcode: b["postalCode"],
      latitude: b["latitude"],
      longitude: b["longitude"],
      distance: b["distance"]
      })
  end
end
