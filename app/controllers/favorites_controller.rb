class FavoritesController < ApplicationController

  def delete
    Favorite.find(params[:id]).destroy
    redirect_to "/users/#{current_user.username}", :notice => "Favorite removed!"
  end

end
