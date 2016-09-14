class Review < ApplicationRecord
  validates :message, presence: true
  validates :message, length: { minimum: 30 }

  belongs_to :product
end
