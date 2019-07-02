class WashController < ApplicationController

  before_action :vehicle_information, only: [:create, :show]
  before_action :vehicle_exceptions, only: [:create, :show]

  def create
    if can_wash?
      AccountHistory.create(account_id: @vehicle.accounts.first.id)
    else
      # TODO: Store the exception ids for the failed washes
    end
  end

  private

  def vehicle_information
    @vehicle = Vehicle.find_by(license_plate: params[:license_plate].upcase)
  end

  def vehicle_exceptions
    @vehicle_exceptions  = @vehicle.vehicle_type.vehicle_type_exceptions
    @vehicle_exception_names = @vehicle_exceptions.collect(&:name)
  end
  
  # TODO: This really belongs in the model...
  def can_wash?
    wash = @vehicle_exception_names.inject([]) do |wash, exception|
      puts "#{exception} can? #{params[exception]}"
      wash << (params[exception] == "true").to_s
    end
    wash.include?("false") ? false : true
  end

  # TODO: This seemed like a good idea at the moment. It needs a bit of work before it can truly
  #       be used to filter paramteres based off of the vehicle exceptions
  def wash_params
    params.permit(:license_plate)
    @vehicle_exception_names.each do |exception|
      params.permit(exception.to_sym)
    end
  end
end
