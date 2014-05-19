class Tour < ActiveRecord::Base

  belongs_to :users
  has_many :likes




end
