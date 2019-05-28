class ErrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :house
end
