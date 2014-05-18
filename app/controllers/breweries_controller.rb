class BreweriesController < ApplicationController


  def search

  end

  def results
    distance = params[:distance].to_i
    beer = params[:beer]
    @results = Brewery.all.where(["distance <= :distance and #{beer} = :beer", { distance: distance, beer: true }])

  end

  def show
    @brew_id = params[:b_name_id]

end
