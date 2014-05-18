class ChangeColumnNamesForPostgresCompatibility < ActiveRecord::Migration
  def change
    rename_column :breweries, :breweryId, :b_name_id
    rename_column :breweries, :streetAddress, :street_address
    rename_column :breweries, :britishAle, :british_ale
    rename_column :breweries, :irishAle, :irish_ale
    rename_column :breweries, :americanAle, :american_ale
    rename_column :breweries, :germanAle, :german_ale
    rename_column :breweries, :belgianAle, :belgian_ale
    rename_column :breweries, :europeanLager, :european_lager
    rename_column :breweries, :americanLager, :american_lager

    rename_column :users, :streetAddress, :street_address
    rename_column :users, :fullStreetAddress, :full_street_address

  end
end
