class User < ActiveRecord::Base

  has_many :tours

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password

  # def generate_new_user(user_hash)
  #   self.username = user_hash[:username]
  #   self.password_hash = user_hash[:password_hash]
  #   self.street_address = user_hash[:street_address]
  #   self.city = user_hash[:city]
  #   self.state = user_hash[:state]
  #   self.zipcode = user_hash[:zipcode]
  #   self.bio = user_hash[:bio]
  #   self.save
  # end

  def convert
    address = "#{self.street_address}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.full_street_address = address
    self.save
  end

end

