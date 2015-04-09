class Api::V1::RecipeController < Api::V1::BaseController
  before_filter :authenticate_user!

  def index
    respond_with(Recipe.all)
  end

  def show
    @data = Recipe.find(params[:id]).to_json()
    respond_with(@data)
  end

  def update
    @data = Recipe.find(params[:id])
    respond_to do |format|
      if @data.update_attributes(recipe_params)
        format.json { head :no_content }
      else
        format.json { render json: @data.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @data = Recipe.create(recipe_params)
    @data.save
    respond_with(@data)
  end

  def destroy
    @data = Recipe.find(params[:id])
    @data.destroy
    respond_to do |format|
      format.json  { head :ok }
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:secure)
  end
end
