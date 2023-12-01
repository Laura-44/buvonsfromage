class CategorieDrink < ApplicationRecord
  belongs_to :category
  belongs_to :drink
  has_many_attached :photos
end
