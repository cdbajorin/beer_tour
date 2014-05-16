class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :zipcode
      t.text :bio
      t.decimal :lat
      t.decimal :long
      t.string :password

      t.timestamps
    end
  end
end
