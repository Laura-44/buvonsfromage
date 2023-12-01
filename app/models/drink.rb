class Drink < ApplicationRecord
  has_many :categorie_drinks
  has_many :matches
  has_many :pairings
  has_one_attached :photo
  # has_one_attached :photo
end
