class BreweriesController < ApplicationController


  def search

  end

  def results
    distance = params[:distance].to_i
    beer = params[:beer].to_s
    results = Brewery.all.where(["distance <= :distance and "\"#{beer}"\" = :beer", { distance: distance, beer: "true" }])
    binding.pry
    # search = Brewery.where{(distance <= search_params[:distance].to_i)}
    # binding.pry
  end


end
