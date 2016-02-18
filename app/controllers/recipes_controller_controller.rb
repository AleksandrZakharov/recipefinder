class RecipesControllerController < ApplicationController
  def index
  	@search_team = params[:search] || 'chocolate'
  	@courses = Recipe.for(@search_team)
  end
end
