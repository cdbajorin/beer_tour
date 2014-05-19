class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    user_hash = params[:user]
    user = User.new
    user.generate_new_user(user_hash)
    user.convert
      if user.valid?
        # log the user in when they register
        @current_user = user
        redirect_to "/users/#{user.username}"
        # redirect_to "/user/login"
      else
        render text: "<h3>username is already taken!</h3><br><a href='/users/new'>Home</a>"

      end
  end

  def profile
    @user = User.find_by_username(params[:username])
  end


end
