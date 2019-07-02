class VehicleType < ApplicationRecord
  has_many :vehicles
  has_many :vehicle_type_exceptions
end
