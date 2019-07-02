class VehiclesController < ApplicationController

  before_action :vehicle_information, only: [:show, :update, :destroy]

  def index
    @vehicles = Vehicle.order(:make)
  end

  def show

  end

  private

  def vehicle_information
    @vehicle = Vehicle.find_by(license_plate: params[:license_plate].upcase)
  end
end
