class CreateVehicleTypeExceptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_type_exceptions do |t|
      t.integer :vehicle_type_id
      t.string :name
      t.string :details
      t.string :message

      t.timestamps
    end
  end
end
