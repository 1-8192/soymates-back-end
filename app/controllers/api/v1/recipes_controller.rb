class Api::V1::RecipesController < ApplicationController
skip_before_action :authorized, only: [:index]

def index
  @recipes = Recipe.all
  render json: @recipes
end

end
