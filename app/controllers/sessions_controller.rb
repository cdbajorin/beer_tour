class SessionsController < ApplicationController

  def new
  end


  def create
    binding.pry
    user = User.find_by_username(params[:username])
    success = user.authenticate(params[:password])
    if success
      session[:user_id] = user.id
      Tour.update_distances(current_user)
      Brewery.update_distances(current_user)
      redirect_to "/users/#{user.username}", :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  # private

  # def session_params

  #   params.require(:user).permit(:password, :username)
  # end


end
