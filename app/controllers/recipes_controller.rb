class RecipesController < ApplicationController
  def index
    @recipes = Recipes.all
    render @recipes, as: :json
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render @recipe, as: :json
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :pairings, :description, :preparation)
  end

end
