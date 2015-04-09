class Api::V1::IngredientsController < Api::V1::BaseController
  # before_filter :authenticate_user!

  def index
    respond_with(Ingredient.all)
  end

  def show
    @ingredient = Ingredient.find(params[:id]).to_json()
    respond_with(@ingredient)
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    respond_to do |format|
      if @ingredient.update_attributes(ingredient_params)
        format.json { head :no_content }
      else
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    @ingredient.save
    respond_with(@ingredient)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    respond_to do |format|
      format.json  { head :ok }
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:secure)
  end
end
