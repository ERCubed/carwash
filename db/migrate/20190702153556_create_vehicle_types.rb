class CreateVehicleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_types do |t|
      t.string :name
      t.decimal :price, :precision => 5, :scale => 2

      t.timestamps
    end
  end
end
