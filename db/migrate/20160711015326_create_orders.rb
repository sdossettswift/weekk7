class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product_name
      t.integer :amount_in_cents
      t.datetime :order_date

      t.timestamps null: false
    end
  end
end
