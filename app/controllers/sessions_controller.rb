class SessionsController < ApplicationController
  def new
    @user=User.new
  end

  def create
    user = User.find_by_username(params[:username])
    success = user.authenticate(params[:password])
    if success
      session[:user_id] = user.id
      redirect_to "/users/#{user.username}", :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  # private
  # def login_params
  #   params.require(:user).permit(:username, :password)
  # end

end
