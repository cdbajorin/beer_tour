class Brewery < ActiveRecord::Base

  def recalculate_distance(user_id)
    user = User.find_by_id(user_id)
    breweries = Brewery.all
    breweries.each do |brewery|
      distance = Geocoder.distance_between([user.latitude,user.longitude],[brewery.latitude,brewery.longitude])
      brewery.distance = distance
      brewery.save
    end
  end


end
