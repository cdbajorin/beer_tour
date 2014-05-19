class ToursController < ApplicationController

  def create
    tour_array = params[:brewery_list]
    tour_string = tour_array.join(",")
    binding.pry
    # Tour.create({

    #   })


  end

end
