class AddTimestampToTours < ActiveRecord::Migration
  def self.up # Or `def up` in 3.1
      change_table :tours do |t|
          t.timestamps
      end
  end
end
