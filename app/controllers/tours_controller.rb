class ToursController < ApplicationController

  def new
    @tour_array = params[:brewery_list]
    @tour_string = @tour_array.join(",")
    # @current_tour = Tour.new
    # @current_tour.stops = tour_string
  end

  def create
    binding.pry
    tour = Tour.new
    tour.name = params[:name]
    tour.stops = params[:stops]
    tour.description = params[:description]
    tour.user_id = current_user.id
    tour.save
    redirect_to "/users/#{current_user.username}", :notice => "Tour created!"
  end



end
