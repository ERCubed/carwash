class CreateAccountHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :account_histories do |t|
      t.integer :account_id
      t.string :exceptions

      t.timestamps
    end
  end
end
