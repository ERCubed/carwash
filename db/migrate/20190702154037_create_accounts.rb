class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :vehicle_id
      t.string :payment_type
      t.boolean :active

      t.timestamps
    end
  end
end
