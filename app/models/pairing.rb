class Pairing < ApplicationRecord
  belongs_to :food
  belongs_to :drink
  belongs_to :user
  has_many_attached :photos
end
