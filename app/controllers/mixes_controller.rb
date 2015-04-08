class MixesController < ApplicationController

  def index
    @mixes = Mixes.all
    render @mixes, as: :json
  end

  def show
  end

  def new
    @mix = Mix.new
  end

  def create
    @mix = Mix.new(mix_params)
    if @mix.save
      render @mix, as: :json
    else
      render :new
    end
  end

  private

  def mix_params
    params.require(:mix).permit(:quantity, :ingredient_id, :measurement_id)
  end

end
