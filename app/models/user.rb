class User < ActiveRecord::Base

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username

  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end











  def generate_new_user(user_hash)
    self.username = user_hash[:username]
    self.password_hash = user_hash[:password_hash]
    self.street_address = user_hash[:street_address]
    self.city = user_hash[:city]
    self.state = user_hash[:state]
    self.zipcode = user_hash[:zipcode]
    self.bio = user_hash[:bio]
    self.save
  end

  def convert
    address = "#{self.street_address}, #{self.city}, #{self.state}, #{self.zipcode}"
    self.latitude = Geocoder.coordinates(address)[0]
    self.longitude = Geocoder.coordinates(address)[1]
    self.full_street_address = address
    self.save
  end

end

