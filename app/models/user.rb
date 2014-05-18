class User < ActiveRecord::Base

validates :username, uniqueness: true

  def convert
    address = "#{self.streetAddress}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.save
  end

end

