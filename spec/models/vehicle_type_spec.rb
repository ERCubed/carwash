require 'rails_helper'

RSpec.describe VehicleType, type: :model do
    describe "associations" do
      it { is_expected.to have_many(:vehicles) }
      it { is_expected.to have_many(:vehicle_type_exceptions) }
    end
  
    describe "validations" do
      # pending
    end
  end
