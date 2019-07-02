FactoryBot.define do
  factory :vehicle_type do
    name { Faker::Vehicle.car_type }
  end
end