class SessionsController < ApplicationController

  def new
  end


  def create
    user = User.find_by_username(params[:username])
    success = false
    if user != nil
      success = user.authenticate(params[:password])
    end

    if success
      session[:user_id] = user.id
      Tour.update_distances(current_user)
      Brewery.update_distances(current_user)
      redirect_to user_path, :notice => "Logged in!"
    else
      redirect_to new_session_path, :notice => "Invalid email or password"
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
