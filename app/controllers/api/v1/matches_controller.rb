class Api::V1::MatchesController < ApplicationController

def index
  @matches = Match.all
  render json: @matches
end

def create
  @match = Match.create(match_params)
  render json: @match
end

def show
  @match = Match.find(params[:id])
  render json: @match
end

def destroy
  @match=Match.find(params[:id])
  @match.destroy
  render json: @matches
end

private

def match_params
  params.require(:match).permit(:user_id, :recipe_id)
end

end
