class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :item_id, null: false
      t.integer :order_id, null: false
      t.integer :product_sum, null: false
      t.integer :amount, null: false
      t.integer :making_status, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
