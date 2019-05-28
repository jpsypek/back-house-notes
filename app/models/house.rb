class House < ApplicationRecord
  has_many :users
  has_many :errands
  has_many :groceries
end
