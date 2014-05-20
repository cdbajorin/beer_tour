class ToursController < ApplicationController

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
    redirect_to "/users/#{current_user.username}", :notice => "Tour created!"
  end

  def search
    @results = Tour.where.not(user_id: current_user.id)
  end

  def favorite
    binding.pry

    tours_array = params[:tour_list]
    tours_array.each do |tour|
      Tour.find(tour).user_id
      binding.pry
      favorite = Favorite.new(tour_id: tour, user_id: Tour.find(tour).user_id)
      binding.pry
    end

  # def results
  end
end
