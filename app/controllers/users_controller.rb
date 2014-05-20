class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    # @user.generate_new_user(user_params)
    @user.convert
    if @user.save
      redirect_to user_login_path, :notice => "signed up!"
    else
      # render: "new"
    end
  end

  def login
    @user = User.new
  end

def new_session
    user = User.find_by_username(params[:username])
    success = user.authenticate(params[:username], params[:password])
    if success
      session[:user_id] = user.id
      redirect_to "/users/#{user.username}", :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "login"
    end
  end


  def profile
    @user = User.find_by_username(params[:username])
  end

  private

    def user_params

      params.require(:user).permit(:password, :street_address, :city, :state, :zipcode, :username, :bio, :password_confirmation)
    end

end
