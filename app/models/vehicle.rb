class Vehicle < ApplicationRecord
  has_many :accounts
  belongs_to :vehicle_type

  validates :vehicle_type_id, presence: true
  validates :year, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :color, presence: true
  validates :license_plate, presence: true
end
