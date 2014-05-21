class User < ActiveRecord::Base

  has_many :tours

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :zipcode, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password

  def convert
    address = "#{self.street_address}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.full_street_address = address
    self.save
  end

end

