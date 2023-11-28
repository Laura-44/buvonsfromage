class Drink < ApplicationRecord
  has_many :categorie_drinks
  has_many :matches
  has_many :pairings
  has_many_attached :photos
  # has_one_attached :photo
end
