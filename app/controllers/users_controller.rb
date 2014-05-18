class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

def create
    user_hash = params[:user]
      user = User.new
      user.username = user_hash[:username]
      user.street_address = user_hash[:street_address]
      user.city = user_hash[:city]
      user.state = user_hash[:state]
      user.zipcode = user_hash[:zipcode]
      user.bio = user_hash[:bio]
      user.save
      binding.pry
      user.convert
      if user.valid?
        # log the user in when they register
        @current_user = user
        redirect_to "/user/login"
      else
        render text: "username is already taken!"
      end
  end
end
