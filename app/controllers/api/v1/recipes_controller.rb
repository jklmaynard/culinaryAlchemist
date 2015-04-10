class Api::V1::RecipesController < Api::V1::BaseController
  # before_filter :authenticate_user!

  def index
    respond_with(Recipe.all)
  end

  def new
    respond_with(Recipe.new)
  end

  def show
    @recipe = Recipe.find(params[:id]).to_json()
    respond_with(@recipe)
  end

  def update
    @recipe = Recipe.find(params[:id])
    respond_to do |format|
      if @recipe.update_attributes(recipe_params)
        format.json { head :no_content }
      else
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.save
    respond_with(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    respond_to do |format|
      format.json  { head :ok }
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:secure)
  end
end
