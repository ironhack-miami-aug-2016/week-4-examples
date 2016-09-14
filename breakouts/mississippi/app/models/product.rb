class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true

  has_many :reviews
end
