class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.uuid :order_id, primary: true, null: false, default: "uuid_generate_v4()"
      t.uuid :customer_id, default: "uuid_generate_v4()"
      t.uuid :executor_id, default: "uuid_generate_v4()"
      t.decimal :purse, precision: 8, scale: 2
      t.integer :status, limit: 2
      t.string :descr, limit: 1000
      t.string :comment_txt, limit: 500
      t.datetime :create_date
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end

    add_index :orders, :order_id, name: 'index_orders_on_order_id'
    add_index :orders, :customer_id, name: 'index_orders_on_customer_id'
    add_index :orders, :executor_id, name: 'index_orders_on_executor_id'
  end
end
