class UpdateBreweriesStreetAddressColumn < ActiveRecord::Migration
  def change
    rename_column :breweries, :street_address, :streetAddress
  end
end
