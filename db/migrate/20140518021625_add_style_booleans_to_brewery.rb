class AddStyleBooleansToBrewery < ActiveRecord::Migration
  def change
    add_column :breweries, :british_ale, :boolean
    add_column :breweries, :irish_ale, :boolean
    add_column :breweries, :american_ale, :boolean
    add_column :breweries, :german_ale, :boolean
    add_column :breweries, :belgian_ale, :boolean
    add_column :breweries, :european_lager, :boolean
    add_column :breweries, :american_lager, :boolean
  end
end
