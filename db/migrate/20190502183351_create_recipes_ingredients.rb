class CreateRecipesIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes_ingredients do |t|
      t.belongs_to :ingredient, foreign_key: true
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
