class FavoritesController < ApplicationController

  def delete
    params[:id]
    binding.pry
    Favorite.delete(params[:id])
    redirect_to "users/#{current_user.username}", :notice => "Favorite removed!"
  end

end
