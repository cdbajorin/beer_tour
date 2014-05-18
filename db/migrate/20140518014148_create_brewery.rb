class CreateBrewery < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :brewery_id
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.float :latitude
      t.float :longitude
      t.float :distance
    end
  end
end
