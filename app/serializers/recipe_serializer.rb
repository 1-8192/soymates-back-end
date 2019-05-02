class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :roll_type, :instructions
end
