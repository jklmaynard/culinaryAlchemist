class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render @ingredients, as: :json
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      render @ingredient, as: :json
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient)
  end
end
