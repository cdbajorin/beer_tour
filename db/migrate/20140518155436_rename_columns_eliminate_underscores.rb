class RenameColumnsEliminateUnderscores < ActiveRecord::Migration
  def change
    rename_column :breweries, :brewery_id, :breweryId
    rename_column :breweries, :british_ale, :britishAle
    rename_column :breweries, :irish_ale, :irishAle
    rename_column :breweries, :american_ale, :americanAle
    rename_column :breweries, :german_ale, :germanAle
    rename_column :breweries, :belgian_ale, :belgianAle
    rename_column :breweries, :european_lager, :europeanLager
    rename_column :breweries, :american_lager, :americanLager

    rename_column :users, :street_address, :streetAddress
    rename_column :users, :full_street_address, :fullStreetAddress
  end
end
