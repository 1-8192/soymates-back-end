class Recipe < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients
  has_many :matches
  has_many :matched_users, through: :matches, class_name: "User"
end
