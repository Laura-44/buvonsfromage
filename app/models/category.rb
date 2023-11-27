class Category < ApplicationRecord
  has_many :foods
  has_many :categorie_drinks
  has_many :user_categories
  # validates :name, presence: true
  # validates :zipcode, :uniqueness => {:scope => [:recorded_at, :something_else]}
end
