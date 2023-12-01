class UserCategory < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :photos
end
