require 'rails_helper'

RSpec.describe VehicleTypeException, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:vehicle_type) }
  end
end
