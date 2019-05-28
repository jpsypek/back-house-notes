class HouseSerializer < ActiveModel::Serializer
  attributes :id, :address, :city, :state, :zip, :users, :groceries, :errands
  # has_many :users
  # has_many :errands
  # has_many :groceries
end
