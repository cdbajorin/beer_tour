class Brewery < ActiveRecord::Base

  def self.update_distances(user)
    Brewery.all.each do |brewery|
      brewery.update_distance(user)
    end
  end

  def update_distance(user)
    self.distance = Geocoder::Calculations.distance_between([user.latitude, user.longitude], [self.latitude, self.longitude])
    self.save
  end

end
