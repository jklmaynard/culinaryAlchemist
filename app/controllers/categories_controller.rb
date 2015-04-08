class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render @categories, as: :json
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render @category, as: :json
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
