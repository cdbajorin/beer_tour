class Tour < ActiveRecord::Base

  belongs_to :users
  has_many :likes

  def self.update_distances(user)
    Tour.all.each do |tour|
      tour.update_distance(user)
    end
  end

  def update_distance(user)
    self.distance = Geocoder::Calculations.distance_between([user.latitude, user.longitude], [self.origin_lat, self.origin_long]) # TODO move Geocoder into a helper
    self.save
  end

end
