class User < ActiveRecord::Base

reverse_geocoded_by :latitude, :longitude
after_validation :reverse_geocode



  def convert_address_to_geocode
    address = "#{self.street_address}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.save
  end

end

