FactoryBot.define do
  factory :vehicle do
    vehicle_type
    year {Faker::Vehicle.year }
    make { Faker::Vehicle.make }
    model { Faker::Vehicle.model }
    color { Faker::Vehicle.color }
    license_plate { Faker::Vehicle.license_plate }
  end
end
