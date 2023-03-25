class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.string :delivery_target_postal_code, null: false
      t.string :delivery_address, null: false
      t.string :delivery_target_full_name, null: false
      t.integer :postage, default: 800, null: false
      t.integer :pay_amount, null: false
      t.integer :payment_methods, default: 0, null: false, limit: 1
      t.integer :status, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
