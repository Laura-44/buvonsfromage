class Match < ApplicationRecord
  belongs_to :food
  belongs_to :drink
  has_many_attached :photos
end
