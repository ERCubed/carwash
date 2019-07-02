class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_type_id
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate

      t.timestamps
    end
  end
end
