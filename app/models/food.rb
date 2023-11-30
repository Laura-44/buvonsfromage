class Food < ApplicationRecord
  belongs_to :category
  has_many :pairings
  has_many :matches, dependent: :delete_all
  has_many_attached :photos
end
