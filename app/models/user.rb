class User < ApplicationRecord
  has_secure_password
  belongs_to :house
  validates :name, uniqueness: true
end
