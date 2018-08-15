class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: 0..5, presence: true, numericality: { only_integer: true }
end
