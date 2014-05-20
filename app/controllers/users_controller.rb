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

  def process_login
    username = params[:username]
    password = params[:password]

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

  private

    def user_params

      params.require(:user).permit(:username, :password, :street_address, :city, :state, :zipcode, :bio, :password_confirmation)
    end

end
