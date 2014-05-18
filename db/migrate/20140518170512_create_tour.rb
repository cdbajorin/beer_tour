class CreateTour < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :stops
    end
  end
end
