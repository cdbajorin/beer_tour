
url = "http://api.brewerydb.com/v2/search/geo/point?key=26f66fc43cc1993e96da0d91327578ee&lat=40.77&lng=-73.95&radius=100"

breweries = HTTParty.get(url)



breweries["data"].each do |b|
  if b["openToPublic"] == "Y"
    Brewery.create({
      id: b["brewery"]["id"],
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
