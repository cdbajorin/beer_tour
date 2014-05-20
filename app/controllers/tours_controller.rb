class ToursController < ApplicationController

  def new
    @tour_array = params[:brewery_list]
    @tour_string = @tour_array.join(",")
    # @current_tour = Tour.new
    # @current_tour.stops = tour_string
  end

  def current
  end


end
