class CategorieDrink < ApplicationRecord
  belongs_to :category
  belongs_to :drink
  has_one_attached :photo
end
