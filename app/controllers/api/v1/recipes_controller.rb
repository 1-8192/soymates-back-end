class Api::V1::RecipesController < ApplicationController
skip_before_action :authorized, only: [:index]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :img, :roll_type, :instructions)
  end

end
