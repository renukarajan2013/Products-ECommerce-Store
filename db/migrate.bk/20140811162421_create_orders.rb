class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :order_id
      t.text :details

      t.timestamps
    end
  end
end
