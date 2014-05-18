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
    url = "http://api.brewerydb.com/v2/brewery/#{@brew_id}/beers?key=#{BREWERYDB_CLIENT_ID}"
    @beer_hash = HTTParty.get(url)
    @brewery = Brewery.find_by_b_name_id(@brew_id)
    # binding.pry
    ### To add to HTML page
#     </div class="brewery_bio">
#       <%= @brewery.bio %>
#     </div>
  end

end
