class RecipesControllerController < ApplicationController
  def index
  	@search_team = params[:search] || 'chocolate'
  	@Recipes = Recipe.for(@search_team)
  end
end
