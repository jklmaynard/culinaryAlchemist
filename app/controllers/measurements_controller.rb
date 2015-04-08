class MeasurementsController < ApplicationController

  def index
    @measurements = Measurement.all
    render @measurements, as: :json
  end

  def new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.new(measurement_params)
    if @measurement.save
      render @measurement, as: :json
    else
      render :new
    end
  end

  private

  def measurement_params
    params.require(:measurement).permit(:measurement)
  end
end
