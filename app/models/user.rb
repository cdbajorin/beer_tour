class User < ActiveRecord::Base

validates :username, uniqueness: true

has_many :tours
# has_many :likes, through :tours


  def generate_new_user(user_hash)
    self.username = user_hash[:username]
    self.street_address = user_hash[:street_address]
    self.city = user_hash[:city]
    self.state = user_hash[:state]
    self.zipcode = user_hash[:zipcode]
    self.bio = user_hash[:bio]
  end


  def convert
    address = "#{self.street_address}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.full_street_address = address
    self.save
  end

end

