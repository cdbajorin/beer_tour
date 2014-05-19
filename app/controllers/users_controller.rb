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
        binding.pry
        redirect_to "/users/login"
      else
        binding.pry
        render text: "<h3>username is already taken!</h3><br><a href='/users/new'>Back</a>"
      end
  end

  def login
    @user = User.new
  end

  def process_login
    username = params[:username]
    password = params[:password]

    @current_user = User.authenticate(username, password)

    if @current_user
      # redirect_to
      render text: "temp works"
    else
      render text: "Login Failed! Invalid email or password!"
    end
  end

  def profile
    @user = User.find_by_username(params[:username])
  end


end
