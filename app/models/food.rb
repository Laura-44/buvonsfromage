class Food < ApplicationRecord
  belongs_to :category
  has_many :pairings
  has_many :matches
  has_many_attached :photos
end
