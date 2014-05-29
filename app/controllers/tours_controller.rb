class ToursController < ApplicationController

  # before_action :

  def new
    @tour_array = params[:brewery_list]
    @tour_string = @tour_array.join(",")
    # @current_tour = Tour.new
    # @current_tour.stops = tour_string
  end

  def create
    tour = Tour.new
    tour.name = params[:name]
    tour.stops = params[:stops]
    tour.description = params[:description]
    tour.user_id = current_user.id
    tour.origin_lat = current_user.latitude
    tour.origin_long = current_user.longitude
    tour.save
    redirect_to user_path(current_user.username), :notice => "Tour created!"
  end

  def show
    @user = User.find_by_username(params[:username])
    tour = Tour.find_by_id(params[:id])
    @tour_array = tour.stops.split(",")
  end

  def search
    @results = Tour.where.not(user_id: current_user.id)
  end

  def favorite
    tours_array = params[:tour_list]
    tours_array.each do |tour|
      Favorite.create({tour_id: tour, user_id: current_user.id})
    end
    redirect_to user_path(current_user.username), :notice => "Favorites added!"
  end

  def destroy
    favorites = Favorite.where(["tour_id = :id", {id: params[:id]}])
    favorites.each do |fav|
      fav.destroy
    end
    Tour.find(params[:id]).destroy
    redirect_to user_path(current_user.username), :notice => "Tour deleted!"
  end

end
