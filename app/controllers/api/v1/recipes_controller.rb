class Api::V1::RecipesController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
=======
# skip_before_action :authorized, only: [:index]
>>>>>>> b2e197176dc556ab87571cb1a849c366156ef4a7
=======
skip_before_action :authorized, only: [:index]
>>>>>>> alessandro-allegranzi

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :img, :roll_type, :instructions)
  end

end
