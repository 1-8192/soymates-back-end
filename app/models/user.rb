class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :recipes, through: :reviews
  has_many :matches
  has_many :matched_recipes, through: :matches, class_name: "Recipe"

  validates :username, :uniqueness => {:case_sensitive => false}
  validates :email, :uniqueness => {:case_sensitive => false}
end
