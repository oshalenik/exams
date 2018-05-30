class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :model_id
      t.datetime :checked_out_at
      t.decimal :total_price, precision: 8, scale: 2, default: 0.0

      t.timestamps
    end
    add_index :orders, :model_id
    add_index :orders, :checked_out_at
  end
end