class Category < ApplicationRecord
  has_many :foods
  has_many :drinks, through: :categorie_drinks
  has_many :users, through: :user_categories
  # validates :name, presence: true
  # validates :zipcode, :uniqueness => {:scope => [:recorded_at, :something_else]}
end
