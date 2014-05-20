class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.convert
    if @user.save
      redirect_to users_login_path, :notice => "signed up!"
    else
      flash.now.alert = "Username taken!"
      render "new"
    end
  end

  def login
    @user = User.new
  end

def new_session
    user = User.find_by_username(params[:username])
    success = user.authenticate(params[:password])
    if success
      session[:user_id] = user.id
      Tour.update_distances(current_user)
      redirect_to "/users/#{user.username}", :notice => "Logged in!"

    else
      flash.now.alert = "Invalid email or password"
      render "login"
    end
  end


  def profile
    @user = User.find_by_username(params[:username])
    tours = Tour.all
    @tours = []
    tours.each do |tour|
      if tour.user_id == @user.id
        @tours << tour
      end
    end
    favorites = Favorite.all
    @favorites = []
    favorites.each do |favorite|
      if favorite.user_id == @user.id
        @favorites << favorite
      end
    end
  end

  def tour
    @user = User.find_by_username(params[:username])
    tour = Tour.find_by_id(params[:id])
    @tour_array = tour.stops.split(",")
  end

  private

    def user_params

      params.require(:user).permit(:password, :street_address, :city, :state, :zipcode, :username, :bio, :password_confirmation)
    end

end
