class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create

  end

  private

  # strong params
  def cookbook_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:user).permit(:username, :street_address, :city, :state, :zipcode, :bio)
  end
end
