class Pairing < ApplicationRecord
  belongs_to :food
  belongs_to :drink
  belongs_to :user
  has_one_attached :photo
end
