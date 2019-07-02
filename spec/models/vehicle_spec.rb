require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:vehicle_type) }
    it { is_expected.to have_many(:accounts) }
  end

  describe "validations" do
    it { should validate_presence_of(:vehicle_type_id) }
    it { should validate_presence_of(:year) }
    it { should validate_presence_of(:make) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:color) }
    it { should validate_presence_of(:license_plate) }
  end
end
