class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render @recipes, as: :json
  end
end
