class Account < ApplicationRecord
  has_many :account_histories
  belongs_to :vehicle

  validates :name, presence: true
  validates :vehicle_id, presence: true
  validates :payment_type, presence: true
  validates :active, presence: true

end
