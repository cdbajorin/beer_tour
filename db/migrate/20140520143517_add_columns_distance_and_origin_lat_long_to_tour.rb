class AddColumnsDistanceAndOriginLatLongToTour < ActiveRecord::Migration
  def change
    add_column :tours, :origin_lat, :float
    add_column :tours, :origin_long, :float
    add_column :tours, :distance, :float
  end
end
