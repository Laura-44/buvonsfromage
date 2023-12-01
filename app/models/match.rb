class Match < ApplicationRecord
  belongs_to :food
  belongs_to :drink
  has_one_attached :photo
end
