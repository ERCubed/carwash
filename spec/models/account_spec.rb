require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:vehicle) }
    it { is_expected.to have_many(:account_histories) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:vehicle_id) }
    it { should validate_presence_of(:payment_type) }
    it { should validate_presence_of(:active) }
  end
end
