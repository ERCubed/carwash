class VehiclesController < ApplicationController

  before_action :vehicle_information, only: [:show, :update, :destroy]

  def index
    @vehicles = Vehicle.order(:make)
  end

  def show; end

  # TODO: Add in strong params so we can just call @vehicle.update(vehicle_params)
  def update; end

  # So sorry to see you go!
  # TODO: Tie this in with the Account to deactivate it, especially if it's the only vehicle on the account. 
  def destroy
    @vehicle.destroy
  end

  private

  def vehicle_information
    @vehicle = Vehicle.find_by(license_plate: params[:license_plate].upcase)
  end
end
