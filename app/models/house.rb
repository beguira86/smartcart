class House < ActiveRecord::Base
  has_many :roommates
  has_many :users, through: :roommates
  has_many :edibles
  has_many :groceries
end
